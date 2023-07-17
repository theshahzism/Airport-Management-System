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


    def __str__(self):
        return f"{self.placeID} - {self.brand}"


class Terminal(models.Model):
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)
    capacity = models.CharField(max_length=50)

    # def __str__(self):
    #     return f"{self.placeID} - {self.capacity}"


class Department(models.Model):
    IDno = models.AutoField(primary_key=True)
    type = models.CharField(max_length=50)
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['IDno'])]

    
    # def __str__(self):
    #     return f"{self.IDno} - {self.type} - {self.placeID}"




class Security(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    secName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)


    # def __str__(self):
    #     return f"{self.IDno} - {self.secName} - {self.grade}"


class Staff(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    staffName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)


    # def __str__(self):
    #     return f"{self.IDno} - {self.staffName} - {self.grade}"



class Engineer(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    engName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)

    # def __str__(self):
    #     return f"{self.IDno} - {self.engName} - {self.grade}"




class AirlineOperates(models.Model):
    airlineID = models.AutoField(primary_key=True)
    airlineName = models.CharField(max_length=50)
    placeID = models.ForeignKey("Terminal", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['airlineID'])]

    def __str__(self):
        return f"{self.placeID} - {self.placeID}- {self.airlineName}"


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


    # def __str__(self):
    #     return f"{self.id} - {self.price} - {self.airlineClass} - {self.source} - {self.destination}"




class Tickets_Luggage(models.Model):
    ticketNO = models.ForeignKey("Tickets", on_delete=models.CASCADE, related_name='ticketnumber')
    seatNO = models.ForeignKey("Tickets", on_delete=models.CASCADE)
    luggageID = models.IntegerField(primary_key=True)
    weight = models.IntegerField()

    # def __str__(self):
    #     return f"{self.ticketNO} - {self.seatNO} - {self.luggageID} - {self.weight}"



    