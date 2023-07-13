from django.shortcuts import render
from django.http import HttpResponse
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
    cursor.execute('select airlineName,source,destination,departureTime,price from airport_airlineoperates join airport_tickets on airport_airlineoperates.airlineID=airport_tickets.airlineID_id')
    results=cursor.fetchall()
    return render(request,"index.html",{'index_results':results})

# def tickets(request):
#     airline=AirlineOperates.objects.all
#     return render(request,'tickets.html',{'all':airline})