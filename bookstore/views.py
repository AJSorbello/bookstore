from django.shortcuts import render, redirect
# Django authentication libraries
from django.contrib.auth import authenticate, login, logout
# Django Form for authentication
from django.contrib.auth.forms import AuthenticationForm

# Function for user login
def login_view(request):
    error_message = None  # Initialize error message
    form = AuthenticationForm()  # Create form object

    # When user submits login form
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)  # Get form data
        if form.is_valid():  # Validate the form
            username = form.cleaned_data.get('username')  # Extract username
            password = form.cleaned_data.get('password')  # Extract password
            user = authenticate(username=username, password=password)  # Authenticate user

            if user is not None:  # If user is authenticated
                login(request, user)  # Log the user in
                return redirect('sales:records')  # Redirect to the sales records page
        else:
            error_message = 'Oops.. something went wrong'  # Show error message

    # Context passed to the login template
    context = {
        'form': form,
        'error_message': error_message,
    }
    return render(request, 'auth/login.html', context)  # Render login template

# Function for user logout
def logout_view(request):
    logout(request)  # Log out the user
    return redirect('login')  # Redirect to login page

# Function for home page
def home(request):
    return render(request, 'sales/home.html')  # Render the home template

# Function for contact page
def contact(request):
    return render(request, 'sales/contact.html')  # Render the contact template
