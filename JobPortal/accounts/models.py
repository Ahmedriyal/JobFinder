from django.db import models
from django.contrib.auth.models import User


class UserRegistration(models.Model):
    user = models.OneToOneField(
        User, on_delete=models.CASCADE
    )
    Employer = 'Employer'
    Seeker = 'Seeker'
    register_as_choices = [
        (Employer, 'Employer'),
        (Seeker, 'Seeker'),
    ]

    register = models.CharField(max_length=20, choices=register_as_choices, verbose_name='register', default=Seeker)

    def __str__(self):
        return self.user.username





