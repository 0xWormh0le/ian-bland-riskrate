from django.shortcuts import render, redirect
from django.urls import reverse
from django.contrib import messages
from django.core.mail import send_mail
from django.conf import settings
from .forms import CaptchaForm


def home(request, *args, **kwargs):
    return render(request, "public_index.html", {
        'form': CaptchaForm()
    })


def contact(request, *args, **kwargs):
    return render(request, "public_contact.html", {
        'form': CaptchaForm()
    })

def feedback(request, *args, **kwargs):
    next_path = request.POST.get('redirect', None)
    subject = request.POST.get('subject', 'User Feedback')
    message = request.POST.get('message', '')
    email = request.POST.get('email', None)
    phone = request.POST.get('phone', None)
    name = request.POST.get('name', None)

    if next_path == reverse('contact-us'):
        pass
        # subject, message
    elif next_path == reverse('remediation-ip'):
        pass
        # email, message
    elif next_path == reverse('remediation-ports'):
        pass
        #  email, message
    elif next_path == reverse('remediation-vulns'):
        pass
        #  email, message
    elif next_path == reverse('contact'):
        if not CaptchaForm(request.POST).is_valid():
            return redirect(next_path)
        #  name, email, phone, message, capcha
    elif next_path == reverse('home'):
        if not CaptchaForm(request.POST).is_valid():
            return redirect(next_path)
        #  name, email, phone, message, capcha
    elif next_path == reverse('consultancy'):
        if not CaptchaForm(request.POST).is_valid():
            return redirect(next_path)
        #  name, email, phone, message, capcha
    
    if email is None:
        if request.user.is_authenticated:
            email = request.user.email
        else:
            email = 'Unknown'
            
    content = ""
    if name is not None:
        content += "Name: {}<br/>".format(name)
    if phone is not None:
        content += "Phone Number: {}<br/>".format(phone)
    content += "Email: {}<br/>".format(email)
    content += message

    send_mail(subject, content, email, [settings.EMAIL_HOST_USER], html_message=content)
    
    messages.success(request, 'Submitted Feedback', extra_tags='feedback_success')
    return redirect(next_path)


def pricing(request, *args, **kwargs):
    return render(request, "public_pricing.html", {})


def about_ratings(request, *args, **kwargs):
    return render(request, "public_ratings.html", {})


def remediation_reports(request, *args, **kwargs):
    return render(request, "public_reports.html", {})


def security_starter(request, *args, **kwargs):
    return render(request, "public_security.html", {})


def security_training(request, *args, **kwargs):
    return render(request, "public_training.html", {})

def security_phishing(request, *args, **kwargs):
    return render(request, "public_phishing.html", {})

def threat_assessment(request, *args, **kwargs):
    return render(request, "public_threat_assessments.html", {})


def industry_uses(request, *args, **kwargs):
    return render(request, "public_industry_uses.html", {})


def consultancy(request, *args, **kwargs):
    return render(request, "public_consultancy.html", {
        "form": CaptchaForm()
    })


def privacy(request, *args, **kwargs):
    if request.user.profile.on_trial_or_free_account:
        return redirect('subscribe')
    return render(request, "public_privacy.html", {})
