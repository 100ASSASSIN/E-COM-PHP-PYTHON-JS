from django.db import models

class User(models.Model):
    name_01 = models.CharField(max_length=100)
    email = models.EmailField()
    password = models.CharField(max_length=100)  # You might consider using a more secure method for storing passwords
    contact = models.CharField(max_length=100)
