from django.shortcuts import render, redirect
from django.contrib import messages
from django.core.mail import send_mail
from .models import Contact


#not functioning - modal not loading - coded in - fix ASAP
def contact(request):
    if request.method == 'POST':
        listing_id = request.POST['listing_id']
        listing = request.POST['listing']
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        message = request.POST['message']
        user_id = request.POST['user_id']
        realtor_email = request.POST['realtor_email']

        if request.user.is_authenticated:
            user_id = request.user.id
            has_contacted = Contact.objects.all().filter(listing_id=listing_id, user_id=user_id)
            if has_contacted:
                messages.error(request, 'You have an existing inquiry. Only one is allowed per listing')
                return redirect('listings/' + listing_id)

        contact = Contact(listing=listing, listing_id=listing_id, name=name, email=email, phone=phone, message=message, user_id=user_id, realtor_email=realtor_email)
        contact.save()

        send_mail(
            'Property Listing Inquiry',
            'There has been an inquiry for ' + listing + '. Sign into admin panel for more info'
            'sykron@gmail.com',
            [realtor_email],
            fail_silently=False
        )

        messages.success(request, 'Your request has been submitted, a realtor will get back to you shortly...')
        return redirect('listings/' + listing_id)
