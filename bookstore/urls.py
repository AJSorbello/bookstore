from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from .views import home, login_view, logout_view

urlpatterns = [
    path('admin/', admin.site.urls),
    path('books/', include('books.urls')),
    path('sales/', include('sales.urls')),
    path('sales/contact/', include('sales.contact.urls')),  # Update this line
    path('salespersons/', include('salespersons.urls')),
    path('customers/', include('customers.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)