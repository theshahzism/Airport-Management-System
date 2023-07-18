from django.shortcuts import render, redirect
from django.http import HttpResponse,HttpResponseRedirect
from .models import Tickets
from .models import myTickets
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django import forms


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
    cursor.execute('SELECT ticketNO,airlineName,destination,departureTime,airlineClass,price FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    results_tickets=cursor.fetchall()
    cursor.execute('SELECT DISTINCT destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    distict_tickets=cursor.fetchall()
    return render(request,"tickets.html",{'ticket_results':results_tickets,'tickets_distinct':distict_tickets})

@login_required
def add_my_ticket(request):
    active_user1 = request.session['username']
    tick_id = request.POST.get('tick_id')
    ticket_name = Tickets.objects.get(ticketNO = tick_id)
    myTickets(tick_id, ticketid = ticket_name, username=active_user1).save()
    messages.info(request, 'Ticket Successfully booked!!')
    cursor=connection.cursor()
    slt = "SELECT ticketNO,airlineName,destination,departureTime,airlineClass,price FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE ticketNO <> %(ticketno)s"
    cursor.execute(slt,{'ticketno':tick_id})
    results_tickets=cursor.fetchall()
    cursor.execute('SELECT DISTINCT destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    distict_tickets=cursor.fetchall()
    return render(request,"tickets.html",{'ticket_results':results_tickets,'tickets_distinct':distict_tickets})

@login_required
def show_tickets(request):
    active_user1 = request.session['username']
    cursor=connection.cursor()
    select_stmt = "SELECT airlineName,destination,departureTime,airlineClass,price,username FROM airport_airlineoperates INNER JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id INNER JOIN airport_mytickets ON airport_tickets.ticketNO = airport_mytickets.id WHERE username = %(active_user)s"
    cursor.execute(select_stmt,{'active_user':active_user1})
    ticket=cursor.fetchall()
    return render(request, "mytickets.html", {'all':ticket})



def login_user(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        if not User.objects.filter(username = username).exists():
            messages.info(request, 'User does not exist')
            return redirect('login')
        
        user = authenticate(username=username, password=password)

        if user is None:
            messages.info(request, 'Invalid email or password')
            return redirect('login')
        else:
            login(request, user)
            request.session['username'] = username
            return redirect('homepage')
    return render(request, 'auth.html')


def logout_user(request):
    logout(request)
    return redirect('homepage')

def register_user(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password')

        user = User.objects.filter(username = username)

        if user.exists():
            messages.info(request, 'Username already taken')
            return redirect('register')
        
        user = User.objects.filter(email = email)

        if user.exists():
            messages.info(request, 'Email already taken')
            return redirect('register')

        user = User.objects.create(
            username = username,
            first_name = first_name,
            last_name = last_name,
            email = email)
        user.set_password(password)
        user.save()
        messages.info(request, 'Account created successfully')
        return redirect('login')
    return render(request, 'register.html')

@login_required
def editprofile(request):
    active_user = request.session['username']
    if request.method == 'POST':
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password')

        user = User.objects.filter(email = email)

        if user.exists():
            messages.info(request, 'Email already taken')
            return redirect('editprofile')
        
        updated_user = User.objects.get(username = active_user)
        updated_user.first_name = first_name
        updated_user.last_name = last_name
        updated_user.email = email
        updated_user.set_password(password)
        updated_user.save()
        messages.success(request, 'Credentials Successfully Updated!')


    return render(request,'editprofile.html')

def search(request):
    cursor=connection.cursor()
    answer = request.POST.get('dropdown')
    query = "SELECT ticketNO,airlineName,destination,departureTime,airlineClass,price,username FROM airport_airlineoperates INNER JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id INNER JOIN airport_mytickets ON airport_tickets.ticketNO = airport_mytickets.id WHERE destination = %(desti)s"
    
    cursor.execute(query,{'desti':answer})
    results_tickets=cursor.fetchall()

    cursor.execute('SELECT DISTINCT destination FROM airport_airlineoperates JOIN airport_tickets ON airport_airlineoperates.airlineID = airport_tickets.airlineID_id WHERE destination <> "Karachi"')
    distict_tickets=cursor.fetchall()

    if request.method == 'GET':
        return redirect('tickets.html')
    else:
        return render(request,"tickets.html",{'ticket_results':results_tickets,'tickets_distinct':distict_tickets})
