from django.db import models
import datetime


# Create your models here.
class UserModel(models.Model):
    email = models.CharField(max_length=40)
    password = models.CharField(max_length=124)
    name = models.CharField(max_length=40)
    phone = models.CharField(max_length=20)
    role = models.CharField(max_length=10)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'users_data'

    def isExists(self):
        if UserModel.objects.filter(email=self.email):
            return True
        return False

class AppointmentModel(models.Model):
    first_name = models.CharField(max_length=40)
    last_name = models.CharField(max_length=40)
    email = models.CharField(max_length=40)
    phone = models.CharField(max_length=20)
    your_request = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    accepted = models.BooleanField(default=False)
    accepted_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.first_name + ' ' + self.last_name

    class Meta:
        db_table = 'appointments_data'

class ContactModel(models.Model):
    name = models.CharField(max_length=40)
    email = models.CharField(max_length=40)
    subject = models.CharField(max_length=40)
    message = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'contact_data'


