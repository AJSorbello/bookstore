from django.shortcuts import render, redirect
from .forms import SalesSearchForm
from .models import Sale
import pandas as pd
from .utils import get_bookname_from_id, get_chart
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import AuthenticationForm
from datetime import datetime

def home(request):
    return render(request, 'sales/home.html')

@login_required
def records(request):
    form = SalesSearchForm(request.POST or None)
    sales_df = None
    chart = None
    error_message = None

    if request.method == 'POST':
        if form.is_valid():
            show_all = form.cleaned_data.get('show_all')
            chart_type = form.cleaned_data.get('chart_type', 'bar')  # Set a default chart type
            if show_all:
                qs = Sale.objects.all()
            else:
                book_title = form.cleaned_data.get('book_title')
                qs = Sale.objects.filter(book__name=book_title)

            if qs.exists():
                sales_df = pd.DataFrame(qs.values('id', 'book_id', 'quantity', 'price', 'created_at'))
                sales_df['book_id'] = sales_df['book_id'].apply(get_bookname_from_id)
                sales_df['created_at'] = sales_df['created_at'].apply(lambda x: x.strftime('%B %d, %Y %I:%M %p'))
                chart = get_chart(chart_type, sales_df, labels=sales_df['book_id'].values)
                sales_df = sales_df.to_html()
            else:
                error_message = "No records found."

    context = {
        'form': form,
        'sales_df': sales_df,
        'chart': chart,
        'error_message': error_message
    }

    return render(request, 'sales/records.html', context)

def login_view(request):
    error_message = None
    form = AuthenticationForm()

    if request.method == "POST":
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get("username")
            password = form.cleaned_data.get("password")
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect("books:home")
        else:
            error_message = "ooops.. something went wrong"

    context = {
        "form": form,
        "error_message": error_message,
    }
    return render(request, "auth/login.html", context)

def logout_view(request):
    logout(request)
    return redirect("login")

def contact(request):
    return render(request, 'sales/contact.html')