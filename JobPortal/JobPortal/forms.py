from allauth.account.forms import SignupForm
from django import forms
from django.contrib.auth.models import User
from middlewares.middlewares import RequestMiddleware


# class CustomSignupForm(SignupForm):
#     NONE = ''
#     JOB_SEEKER = 'SEEKER'
#     EMPLOYER = 'EMPLOYER'
#     ACCOUNT_TYPE_CHOICES = (
#         (NONE, '--- Select Account Type ---'),
#         (JOB_SEEKER, 'SEEKER'),
#         (EMPLOYER, 'EMPLOYER')
#     )
#
#     account_type = forms.ChoiceField(
#         choices=ACCOUNT_TYPE_CHOICES, label="Account Type", initial='',
#          widget=forms.Select(), required=True)
#
#     def signup(self, request, user):
#         user.save()
#         userprofile, created = self.get_or_create(user=user)
#         user.userprofile.save()
