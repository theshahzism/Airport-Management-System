from django.db import models
import viewflow.fields
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
    capacity = models.IntegerField()

    class Meta:
        indexes = [models.Index(fields=['airlineID'])]

class Tickets(models.Model):
    id = CompositeKey(columns=['airlineName', 'seatNO'])
    seatNO = models.IntegerField()
    airlineName = models.CharField(max_length=50)
    price = models.PositiveBigIntegerField()
    airlineClass = models.CharField(max_length=50)
    source = models.CharField(max_length=100)
    destination = models.CharField(max_length=100)
    departureTime = models.TimeField()
    arrivalTime = models.TimeField()

class Luggage(models.Model):
    id = CompositeKey(columns=['airlineName', 'seatNO'])
    airlineName = models.CharField(max_length=50)    
    luggageID = models.IntegerField()
    weight = models.IntegerField()