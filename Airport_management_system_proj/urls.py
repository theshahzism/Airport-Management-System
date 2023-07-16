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
]

admin.site.index_title='Airport Management System'
admin.site.site_header='Airport Management System Admin'
admin.site.site_title='DBMS Project'