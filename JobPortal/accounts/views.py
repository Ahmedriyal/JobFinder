from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from .models import UserRegistration



# Create your views here.
from JobFinder.models import UserProfile


def register(request):

    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        register = request.POST['register']

        if password1 == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request, "Username exist")
                return redirect('register')

            elif User.objects.filter(email=email).exists():
                messages.info(request, "This email is already used")
                return redirect('register')

            else:
                user = User.objects.create_user(username=username, email=email, password=password1)
                userregistration = UserRegistration(register=register, user=user)
                userregistration.save()
                auth.login(request, user)

                # if register == 'Employer':
                #     userprofile = UserProfile.objects.create(user=user, is_employer=True)
                #     userprofile.save()
                # else:
                #     userprofile = UserProfile.objects.create(user=user)
                #     userprofile.save()

                messages.info(request, "User created. Login now")
                return redirect('login')
        else:
            messages.info(request, "Password not matching")
            return redirect('register')
    else:
        return render(request, 'html/register.html')


def login(request):

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            messages.info(request, "Wrong username or password")
            return redirect('login')
    else:
        return render(request, 'html/login.html')

def logout(request):
    auth.logout(request)
    return redirect('/')
