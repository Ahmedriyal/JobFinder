# Generated by Django 3.1.7 on 2021-04-20 05:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('JobFinder', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='jobpost',
            name='created_by',
        ),
    ]