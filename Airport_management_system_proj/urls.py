"""
URL configuration for Airport_management_system_proj project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from airport import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", views.homePage,name='homepage'),
    path("schedule", views.full_schedule,name='full_schedule'),
    path("viewtickets", views.view_tickets,name='view_tickets'),
    path('add_my_ticket', views.add_my_ticket, name='add_my_ticket'),
    path('login', views.login_user, name='login'),
    path('register', views.register_user, name='register'),
    path('logout', views.logout_user, name='logout'),
    path('editprofile', views.editprofile, name='editprofile'),
    path('mytickets', views.show_tickets, name='my_tickets'),
    path('accounts/login/',views.login_user, name='login'),
    path('accounts/login/register', views.register_user, name='register'),
    path('accounts/login/login',views.login_user, name='login'),
    path('search', views.search, name='search'),
    path('restaurants', views.restaurants, name='restaurants'),
    path('aboutus', views.aboutUS, name='aboutus'),
    path('stores', views.stores, name='stores'),
    ]


admin.site.index_title='Airport Management System'
admin.site.site_header='Airport Management System Admin'
admin.site.site_title='DBMS Project'