from django.db import models
from viewflow.fields import CompositeKey

class AirportPlace(models.Model):
    placeID = models.AutoField(primary_key=True)
    location = models.CharField(max_length=50)
    type = models.CharField(max_length=50)

    class Meta:
        indexes = [models.Index(fields=['placeID'])]

class Restaurants(models.Model):
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)
    brand = models.CharField(max_length=50)
class Terminal(models.Model):
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)
    capacity = models.CharField(max_length=50)


class Department(models.Model):
    IDno = models.AutoField(primary_key=True)
    type = models.CharField(max_length=50)
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['IDno'])]



class Security(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    secName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)


class Staff(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    staffName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)



class Engineer(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    engName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)



class AirlineOperates(models.Model):
    airlineID = models.AutoField(primary_key=True)
    airlineName = models.CharField(max_length=50)
    placeID = models.ForeignKey("Terminal", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['airlineID'])]



class Tickets(models.Model):
    id = CompositeKey(columns=['ticketNO', 'seatNO'])
    ticketNO = models.CharField(max_length=50)
    seatNO = models.CharField(max_length=50)
    airlineID = models.ForeignKey("AirlineOperates", on_delete=models.CASCADE)
    price = models.PositiveBigIntegerField()
    airlineClass = models.CharField(max_length=50)
    source = models.CharField(max_length=100)
    destination = models.CharField(max_length=100)
    departureTime = models.TimeField()
    arrivalTime = models.TimeField()




class Tickets_Luggage(models.Model):
    ticketNO = models.ForeignKey("Tickets", on_delete=models.CASCADE, related_name='ticketnumber')
    seatNO = models.ForeignKey("Tickets", on_delete=models.CASCADE)
    luggageID = models.IntegerField(primary_key=True)
    weight = models.IntegerField()

    
