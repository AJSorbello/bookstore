from django.urls import path, include
from .views import home, records, contact

app_name = "sales"

urlpatterns = [
    path("", home, name="home"),
    path("records/", records, name="records"),
    path('', include('sales.contact.urls')),
]