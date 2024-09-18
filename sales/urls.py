from django.urls import path
from .views import home, records, contact

app_name = "sales"  # Namespace your app

urlpatterns = [
    path('', home, name='home'),  # Main home page
    path('records/', records, name='records'),  # Records page
    path('contact/', contact, name='contact'),  # Contact page
]
