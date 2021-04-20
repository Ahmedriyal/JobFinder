from django.contrib import admin
from .models import JobPost, Resume, Contact, UserProfile, CandidatesApplied
# Register your models here.
admin.site.register(JobPost)
admin.site.register(Resume)
admin.site.register(Contact)
admin.site.register(CandidatesApplied)



class UserProfileAdmin(admin.ModelAdmin):
    list_display = ['user', 'first_name', 'last_name', 'gender']

    class Meta:
        model = UserProfile


admin.site.register(UserProfile, UserProfileAdmin)