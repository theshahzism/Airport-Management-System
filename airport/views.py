from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from .models import AirlineOperates
from .models import AirportPlace
from .models import Restaurants
from .models import Terminal
from .models import Department
from .models import Security
from .models import Staff
from .models import Engineer
from .models import Tickets
from .models import Tickets_Luggage

from django.db import connection

#We have joined two tables from tickets and airline operates to show data on the first home page for schedules
def homePage(request):
    cursor=connection.cursor()
    cursor.execute('SELECT arrivalTime, airlineName, airlineClass, source, destination,departureTime,arrivalTime FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE source <> "Karachi"')
    results_arrival=cursor.fetchall()
    cursor.execute('SELECT arrivalTime, airlineName, airlineClass, source, destination,departureTime,arrivalTime FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    results_departure=cursor.fetchall()
    return render(request,"index.html",{'arrival_results':results_arrival,'departure_results':results_departure})


def full_schedule(request):
    cursor=connection.cursor()
    cursor.execute('SELECT arrivalTime, airlineName, airlineClass, source, destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE source <> "Karachi"')
    results_arrival=cursor.fetchall()
    cursor.execute('SELECT arrivalTime, airlineName, airlineClass, source, destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    results_departure=cursor.fetchall()
    return render(request, 'flightSchedule.html',{'arrival_results':results_arrival,'departure_results':results_departure})

def view_tickets(request):
    cursor=connection.cursor()
    cursor.execute('SELECT airlineName,destination,departureTime,airlineClass,price FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    results_tickets=cursor.fetchall()
    cursor.execute('SELECT DISTINCT destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    distict_tickets=cursor.fetchall()
    return render(request,"tickets.html",{'ticket_results':results_tickets,'tickets_distinct':distict_tickets})



# def tickets(request):
#     airline=AirlineOperates.objects.all
#     return render(request,'tickets.html',{'all':airline})