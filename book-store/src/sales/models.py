from django.db import models

from books.models import Book

# because we need to connect sales with books
class Sale(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField()
    price = models.FloatField()
    date_created = models.DateTimeField(auto_now_add=True)  # Automatically set on creation

    def __str__(self):
        return f"id: {self.pk}, book: {self.book.name}, quantity: {self.quantity}"
