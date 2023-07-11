from django.db import models

class Person(models.Model):
    name = models.CharField(max_length=50)
    birthday = models.DateField()
    anniversary = models.ForeignKey(
        "Anniversary", on_delete=models.CASCADE)
    address = models.ForeignKey(
        "Address", on_delete=models.CASCADE)

class Address(models.Model):
    line1 = models.CharField(max_length=150)
    line2 = models.CharField(max_length=150)
    postalcode = models.CharField(max_length=10)
    city = models.CharField(max_length=150)
    country = models.CharField(max_length=150)

class Anniversary(models.Model):
    date = models.DateField()