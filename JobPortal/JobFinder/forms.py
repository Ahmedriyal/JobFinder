from django.forms import ModelForm, forms
from .models import UserProfile, Resume, CandidatesApplied

class UserProfileForm(ModelForm):
    class Meta:
        model = UserProfile
        fields = '__all__'
        exclude = ['user']

class ApplyForm(ModelForm):
    class Meta:
        model = CandidatesApplied
        fields = '__all__'
        exclude = ['job']
