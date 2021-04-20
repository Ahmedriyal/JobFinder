from django.urls import path, include

from . import views

urlpatterns = [
        #Leave as empty string for base url
	path('', views.jobfinder, name="jobfinder"),
	path('jobs/', views.jobs, name="jobs"),
	path('jobpost/', views.jobpost, name="jobpost"),
	path('addResume/', views.addResume, name="addResume"),
	path('resumes/', views.resumes, name="resumes"),
	path('profile/', views.profile, name="profile"),
	path('userprofile/', views.userprofile, name="userprofile"),
    path('jobs/<int:job_id>/', views.job_detail, name="job_detail"),
	path('dashboard/', views.dashboard, name="dashboard"),
	path('<int:job_id>/apply/', views.apply, name="apply"),


]