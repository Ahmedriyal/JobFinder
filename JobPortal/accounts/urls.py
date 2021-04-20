from django.urls import path

from . import views

urlpatterns = [
        #Leave as empty string for base url
	path("login", views.login, name="login"),
	path("logout", views.logout, name="logout"),
	path("register", views.register, name="register"),

]