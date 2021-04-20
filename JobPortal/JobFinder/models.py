from django.conf import settings
from django.contrib.auth.models import User
from django.db import models

from .choices import (
    GENDER_CHOICES
)


# Create your models here.
class JobPost(models.Model):
    job_title = models.CharField(max_length=50)
    job_location = models.CharField(max_length=50)

    Full_Time = 'Full Time'
    Part_Time = 'Part Time'
    Internship = 'Internship'

    type_choices = [
        (Full_Time, 'Full Time'),
        (Part_Time, 'Part Time'),
        (Internship, 'Internship'),
    ]
    jobType = models.CharField(max_length=50, choices=type_choices, null=True, blank=True)
    job_tags = models.CharField(max_length=100)
    job_description = models.CharField(max_length=1000)
    application = models.URLField(max_length=100)
    salary_per_month = models.IntegerField(default=0)
    working_days = models.IntegerField(default=0)
    apply_link = models.URLField(max_length=100)
    deadline = models.DateField()

    Engineering = 'Engineering'
    IT = 'IT'
    Management = 'Management'
    Sales = 'Sales'
    Civil_Engineering = 'Civil Engineering'
    Electrical_Engineering = 'Electrical Engineering'
    Mechanical_Engineering = 'Mechanical Engineering'
    Other = 'Other'
    category_choices = [
        (Engineering, 'Engineering'),
        (IT, 'IT'),
        (Management, 'Management'),
        (Sales, 'Sales'),
        (Civil_Engineering, 'Civil Engineering'),
        (Electrical_Engineering, 'Electrical Engineering'),
        (Mechanical_Engineering, 'Mechanical Engineering'),
        (Other, 'Other'),
    ]
    job_category = models.CharField(max_length=50, choices=category_choices)

    company_name = models.CharField(max_length=50)
    company_website = models.URLField(max_length=100)
    company_address = models.CharField(max_length=100)
    company_contact = models.CharField(max_length=20)
    company_email = models.EmailField(max_length=30)
    facebook_link = models.URLField(max_length=100)
    company_logo = models.ImageField(upload_to='CompanyLogos/', null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True, blank=True)

    created_by = models.ForeignKey(User, on_delete=models.CASCADE, related_name='job_detail', null=True, blank=True)

    def __str__(self):
        return self.job_title


class Resume(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=150)
    mobileNo = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    title = models.CharField(max_length=50)
    skills = models.CharField(max_length=200)
    objectives = models.CharField(max_length=1000)
    pic = models.ImageField(upload_to='UserInfo/', null=True, blank=True)
    resume_file = models.FileField(upload_to='UserInfo/', null=True, blank=True)

    def __str__(self):
        return self.name


class CandidatesApplied(models.Model):
    job = models.ForeignKey(JobPost, on_delete=models.CASCADE, null=True, blank=True)
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=150)
    mobileNo = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    DOB = models.DateField()
    resume_file = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.name


class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=50)
    message = models.CharField(max_length=2000)


class UserProfile(models.Model):
    # Model Fields
    user = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='profile', null=True, blank=True
    )
    first_name = models.CharField(max_length=20, null=True, blank=True)
    last_name = models.CharField(max_length=20, null=True, blank=True)
    mobile_no = models.CharField(max_length=20, null=True, blank=True)
    address = models.CharField(max_length=255)

    gender = models.CharField(
        max_length=10, choices=GENDER_CHOICES, blank=True, null=True, verbose_name='gender'
    )
    # account_type = models.CharField(
    #     max_length=10, choices=USER_ROLE_CHOICES, blank=True, null=True, verbose_name='account type'
    # )
    created_at = models.DateTimeField(
        auto_now_add=True, verbose_name='created at'
    )
    updated_at = models.DateTimeField(
        auto_now=True, verbose_name='updated at'
    )

    pic = models.ImageField(upload_to='Userprofile/', null=True, blank=True)

    class Meta:
        verbose_name = "User Profile"
        verbose_name_plural = "User Profiles"
        ordering = ["user__date_joined"]

        def __str__(self):
            return self.user.username
