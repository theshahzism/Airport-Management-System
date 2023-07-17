from django.db import models
from django.contrib.auth.models import User

class AirportPlace(models.Model):
    placeID = models.AutoField(primary_key=True)
    type = models.CharField(max_length=50)

    class Meta:
        indexes = [models.Index(fields=['placeID'])]

    def __str__(self):
        return f"Palace ID={self.placeID}, Type={self.type}"

    

class Restaurants(models.Model):
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)
    brand = models.CharField(max_length=50)
    location = models.CharField(max_length=50)


    def __str__(self):
        return f"Place ID={self.placeID}, Brand={self.brand}, location={self.location}"


class Terminal(models.Model):
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)
    capacity = models.CharField(max_length=50)
    location = models.CharField(max_length=50)

    def __str__(self):
        return f"Place ID={self.placeID}, Capacity={self.capacity}, Location={self.location}"


class Department(models.Model):
    IDno = models.AutoField(primary_key=True)
    type = models.CharField(max_length=50)
    placeID = models.ForeignKey("AirportPlace", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['IDno'])]

    
    def __str__(self):
        return f"ID={self.IDno}, Type={self.type}, Place ID={self.placeID}"




class Security(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    secName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)


    def __str__(self):
        return f"ID={self.IDno}, Security Personnel name={self.secName}, Grade{self.grade}"


class Staff(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    staffName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)


    def __str__(self):
        return f"ID={self.IDno}, Staff name={self.staffName}, Grade={self.grade}"



class Engineer(models.Model):
    IDno = models.ForeignKey("Department", on_delete=models.CASCADE)
    engName = models.CharField(max_length=50)
    grade = models.CharField(max_length=50)

    def __str__(self):
        return f"ID={self.IDno}, Engineer name={self.engName}, Grade={self.grade}"




class AirlineOperates(models.Model):
    airlineID = models.AutoField(primary_key=True)
    airlineName = models.CharField(max_length=50)
    placeID = models.ForeignKey("Terminal", on_delete=models.CASCADE)

    class Meta:
        indexes = [models.Index(fields=['airlineID'])]

    def __str__(self):
        return f"{self.placeID},Airline ID={self.airlineID} Airline Name={self.airlineName}"


class Tickets(models.Model):
    ticketNO = models.IntegerField(primary_key=True)
    seatNO = models.CharField(max_length=50)
    airlineID = models.ForeignKey("AirlineOperates", on_delete=models.CASCADE)
    price = models.PositiveBigIntegerField()
    airlineClass = models.CharField(max_length=50)
    source = models.CharField(max_length=100)
    destination = models.CharField(max_length=100)
    departureTime = models.TimeField()
    arrivalTime = models.TimeField()


    def __str__(self):
        return f"Ticket={self.ticketNO},Price={self.price}, Class={self.airlineClass}, Source={self.source}, Destination={self.destination}, Departure Time={self.departureTime}, Arrival Time={self.arrivalTime}"




class Tickets_Luggage(models.Model):
    ticketNO = models.ForeignKey("Tickets", on_delete=models.CASCADE, related_name='ticketnumber')
    seatNO = models.ForeignKey("Tickets", on_delete=models.CASCADE)
    luggageID = models.IntegerField(primary_key=True)
    weight = models.IntegerField()

    def __str__(self):
        return f"Ticket={self.ticketNO}, Luggade ID={self.luggageID}, Weight={self.weight}"



    
class myTickets(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)
    id = models.IntegerField(primary_key=True),
    ticketid = models.ForeignKey("Tickets", on_delete=models.CASCADE)
    username = models.CharField(max_length=50, default="")
