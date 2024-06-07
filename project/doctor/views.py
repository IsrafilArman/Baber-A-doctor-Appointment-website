from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic.base import TemplateView
from django.core.mail import EmailMessage
from django.core.mail import send_mail
from django.conf import settings
from urllib import request
from django.shortcuts import redirect, render
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.hashers import check_password
from django.contrib.auth.hashers import make_password
from django.db import connection
from doctor.models import UserModel,datetime,models
from django.contrib import messages
from doctor.models import AppointmentModel,ContactModel
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout




# Create your views here.
class HomeTemplateView(TemplateView):
    template_name = 'index.html'

def contact(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        message = request.POST.get('message')
        print(name, email, message)
        
        contactMsg = "Name: " + name + "\nEmail: " + email + "\nMessage: " + message

        send_mail(
            subject='Mail from contact page',
            message=contactMsg,
            from_email=email,
            recipient_list=[settings.EMAIL_HOST_USER],
            fail_silently=False,
        )

        new_contact = ContactModel()
        new_contact.name = name
        new_contact.email = email
        new_contact.message = message
        new_contact.save()
        messages.success(request, "Your message has been sent successfully.")
        return redirect('contact')
    return render(request, 'contact.html')





def appointment(request):
    if request.method == 'POST':
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        phone = request.POST.get('phone')
        email = request.POST.get('email')
        your_request = request.POST.get('your_request')
        print(first_name, last_name, phone, email, your_request)
        
        appointmentMsg = "First Name: " + first_name + "\nLast Name: " + last_name + "\nPhone: " + phone + "\nEmail: " + email + "\nRequest: " + your_request

        send_mail(
            subject=f'{first_name} has sent you a message',
            message=appointmentMsg,
            from_email=email,
            recipient_list=[settings.EMAIL_HOST_USER],
            fail_silently=False,
        )
        
        new_appointment = AppointmentModel()
        new_appointment.first_name = first_name
        new_appointment.last_name = last_name
        new_appointment.email = email
        new_appointment.phone = phone
        new_appointment.your_request = your_request
        new_appointment.save()
        messages.success(request, "Your appointment has been sent successfully.")
        return redirect('appointment')
    return render(request, 'appointment.html')
    




def signup(request):
   if request.method == "POST":

        email = request.POST.get('email')
        password = make_password(request.POST.get('password'))

        new_user = UserModel()
        new_user.email = email
        new_user.password = password
        new_user.name = email.split('@')[0]
        new_user.phone = '+880' + request.POST.get('phone')
        new_user.role = 'patient'

        if new_user.isExists():
            messages.error(request, "This Email is already registered")
            return redirect('signup')
        else:
            new_user.save()
            messages.success(request, "Registered Successfully")
            return redirect('login')
   return render(request, 'signup.html')


def login(request):
    if request.method == 'POST':
        try:
            userDetail = UserModel.objects.get(
                email=request.POST.get('email'))
            if check_password(request.POST.get('password'), (userDetail.password)):
                request.session['email'] = userDetail.email
                return redirect('home')

            else:
                messages.error(
                    request, 'Password incorrect...!')
        except UserModel.DoesNotExist as e:
            messages.error(request, 'No user found of this email....!')
    return render(request, 'login.html')

def logout(request):
    request.session.clear()
    return redirect('home')




def profile(request):
    try:
        user = UserModel.objects.get(email=request.session['email'])
        return render(request, 'profile.html', {'user': user})
    except:
        messages.error(request, 'You need to login first')
        return redirect('login')

   



