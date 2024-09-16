
from books.models import Book

from django.db import models

class Sale(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True)  # Automatically set the field to now when the object is first created

    def __str__(self):
        return f"{self.book.name} - {self.quantity} - {self.price}"