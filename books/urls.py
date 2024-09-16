# books/urls.py

from django.urls import path
from .views import book_list, book_detail, home

app_name = 'books'

urlpatterns = [
    path('', home, name='home'),  # Home page for the books app
    path('list/', book_list, name='books'),  # List of books
    path('<int:pk>/', book_detail, name='detail'),  # Detail view for a specific book
]