from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from JobFinder.models import JobPost, Resume, Contact, UserProfile, CandidatesApplied
from django.contrib import messages
from .forms import UserProfileForm, ApplyForm


# Create your views here.
def jobfinder(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        message = request.POST['message']

        contact = Contact(name=name, email=email, message=message)
        contact.save()
        return redirect('jobfinder')
    else:
        return render(request, 'html/jobfinder.html')


def jobs(request):
    jobs = JobPost.objects.all()

    return render(request, 'html/jobs.html', {'jobs': jobs})


def job_detail(request, job_id):
    jobs = JobPost.objects.get(pk=job_id)

    return render(request, 'html/job_detail.html', {'jobs': jobs})


def jobpost(request):
    if request.method == 'POST':
        job_title = request.POST['job_title']
        jobType = request.POST['jobType']
        job_location = request.POST['job_location']
        job_category = request.POST['job_category']
        job_tags = request.POST['job_tags']
        job_description = request.POST['job_description']
        application = request.POST['application']
        salary_per_month = request.POST['salary_per_month']
        working_days = request.POST['working_days']
        apply_link = request.POST['apply_link']
        deadline = request.POST['deadline']

        company_name = request.POST['company_name']
        company_website = request.POST['company_website']
        company_address = request.POST['company_address']
        company_contact = request.POST['company_contact']
        company_email = request.POST['company_email']
        facebook_link = request.POST['facebook_link']
        company_logo = request.FILES['company_logo']


        jobpost = JobPost(job_title=job_title, jobType=jobType, job_location=job_location, job_category=job_category,
                          job_tags=job_tags, created_by=request.user,
                          job_description=job_description, application=application,
                          salary_per_month=salary_per_month, working_days=working_days, apply_link=apply_link,
                          deadline=deadline, company_name=company_name, company_website=company_website,
                          company_address=company_address, company_contact=company_contact, company_email=company_email,
                          facebook_link=facebook_link, company_logo=company_logo)

        jobpost.save()
        messages.info(request, "Job successfully posted")
        return redirect('jobpost')
    else:
        return render(request, 'html/jobpost.html')


def addResume(request):
    if request.method == 'POST':
        name = request.POST['name']
        address = request.POST['address']
        mobileNo = request.POST['mobileNo']
        email = request.POST['email']
        title = request.POST['title']
        skills = request.POST['skills']
        objectives = request.POST['objectives']
        pic = request.FILES['pic']
        resume_file = request.FILES['resume_file']

        addResume = Resume(name=name, address=address, email=email, mobileNo=mobileNo, title=title, skills=skills,
                           objectives=objectives, pic=pic, resume_file=resume_file)

        addResume.save()
        messages.info(request, "successfully submitted")
        return redirect('addResume')
    else:
        return render(request, 'html/addResume.html')


def resumes(request):
    resumes = Resume.objects.all()

    return render(request, 'html/resumes.html', {'resumes': resumes})


def profile(request):
    args = {'user': request.user}
    return render(request, 'html/profile.html', args)


def userprofile(request):
    user = request.user
    form = UserProfileForm(instance=user)

    if request.method == 'POST':
        form = UserProfileForm(request.POST, request.FILES or None)
        # print(request.POST['gender'], 'Data saved')
        # print(request.POST)
        profile_qs = UserProfile.objects.filter(user=request.user)
        if profile_qs.exists():
            profile_qs.update(user=request.user, first_name=request.POST['first_name'],
                              last_name=request.POST['last_name'],
                              address=request.POST['address'], gender=request.POST['gender'],
                              mobile_no=request.POST['mobile_no'], pic=request.FILES['pic'])
        else:
            UserProfile.objects.create(user=request.user, first_name=request.POST['first_name'],
                                       last_name=request.POST['last_name'], address=request.POST['address'],
                                       gender=request.POST['gender'], mobile_no=request.POST['mobile_no'],
                                       pic=request.FILES['pic'])


            # if form.is_valid():
            #     form.save()

            return redirect('profile')

    return render(request, 'html/userprofile.html', {'form': form})

    # else:

    #     form = UserProfileForm()

    #     return render(request, 'html/userprofile.html', {'form': form})


def dashboard(request):
    candidates = CandidatesApplied.objects.all()

    return render(request, 'html/dashboard.html', {'candidates': candidates})

def apply(request, job_id):
    jobs = JobPost.objects.get(pk=job_id)

    if request.method == 'POST':
        form = ApplyForm(request.POST, request.FILES)
        if form.is_valid():
            candidatesapplied = form.save(commit=False)
            candidatesapplied.job = jobs
            candidatesapplied.save()

            return redirect('dashboard')
    else:
        form = ApplyForm()

    context = {'form': form, 'jobs': jobs}
    return render(request, 'html/apply.html', context)