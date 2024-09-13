from django.urls import path
from .views import home, records, contact

app_name = "sales"

urlpatterns = [
    path("", home, name="home"),
    path("sales/", records, name="records"),
    path('contact/', contact, name='contact'),
]