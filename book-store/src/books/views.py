from django.shortcuts import render, get_object_or_404
from .models import Book  # to access Book model

def book_list(request):
    books = Book.objects.all()
    return render(request, 'books/main.html', {'object_list': books})

def book_detail(request, pk):
    book = get_object_or_404(Book, pk=pk)
    return render(request, 'books/detail.html', {'object': book})

# Create your views here.
def home(request):
    return render(request, "books/home.html")

