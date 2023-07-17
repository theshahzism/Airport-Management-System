# Generated by Django 4.2.3 on 2023-07-16 17:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AirlineOperates',
            fields=[
                ('airlineID', models.AutoField(primary_key=True, serialize=False)),
                ('airlineName', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='AirportPlace',
            fields=[
                ('placeID', models.AutoField(primary_key=True, serialize=False)),
                ('type', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Department',
            fields=[
                ('IDno', models.AutoField(primary_key=True, serialize=False)),
                ('type', models.CharField(max_length=50)),
                ('placeID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.airportplace')),
            ],
        ),
        migrations.CreateModel(
            name='Tickets',
            fields=[
                ('ticketNO', models.IntegerField(primary_key=True, serialize=False)),
                ('seatNO', models.CharField(max_length=50)),
                ('price', models.PositiveBigIntegerField()),
                ('airlineClass', models.CharField(max_length=50)),
                ('source', models.CharField(max_length=100)),
                ('destination', models.CharField(max_length=100)),
                ('departureTime', models.TimeField()),
                ('arrivalTime', models.TimeField()),
                ('airlineID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.airlineoperates')),
            ],
        ),
        migrations.CreateModel(
            name='Tickets_Luggage',
            fields=[
                ('luggageID', models.IntegerField(primary_key=True, serialize=False)),
                ('weight', models.IntegerField()),
                ('seatNO', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.tickets')),
                ('ticketNO', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='ticketnumber', to='airport.tickets')),
            ],
        ),
        migrations.CreateModel(
            name='Terminal',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('capacity', models.CharField(max_length=50)),
                ('location', models.CharField(max_length=50)),
                ('placeID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.airportplace')),
            ],
        ),
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('staffName', models.CharField(max_length=50)),
                ('grade', models.CharField(max_length=50)),
                ('IDno', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.department')),
            ],
        ),
        migrations.CreateModel(
            name='Security',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('secName', models.CharField(max_length=50)),
                ('grade', models.CharField(max_length=50)),
                ('IDno', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.department')),
            ],
        ),
        migrations.CreateModel(
            name='Restaurants',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('brand', models.CharField(max_length=50)),
                ('location', models.CharField(max_length=50)),
                ('placeID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.airportplace')),
            ],
        ),
        migrations.CreateModel(
            name='myTickets',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ticketid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.tickets')),
            ],
        ),
        migrations.CreateModel(
            name='Engineer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('engName', models.CharField(max_length=50)),
                ('grade', models.CharField(max_length=50)),
                ('IDno', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.department')),
            ],
        ),
        migrations.AddIndex(
            model_name='airportplace',
            index=models.Index(fields=['placeID'], name='airport_air_placeID_d707ff_idx'),
        ),
        migrations.AddField(
            model_name='airlineoperates',
            name='placeID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='airport.terminal'),
        ),
        migrations.AddIndex(
            model_name='department',
            index=models.Index(fields=['IDno'], name='airport_dep_IDno_680aa5_idx'),
        ),
        migrations.AddIndex(
            model_name='airlineoperates',
            index=models.Index(fields=['airlineID'], name='airport_air_airline_c623a4_idx'),
        ),
    ]
