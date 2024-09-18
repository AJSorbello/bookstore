from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from . import views  # Import views from the current directory

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),  # Add this line to handle the root URL
    path('books/', include('books.urls')),
    path('sales/', include('sales.urls')),
    path('sales/contact/', include('sales.contact.urls')),  # Ensure this is correct
    # path('salespersons/', include('salespersons.urls')),  # Removed this line
    # path('customers/', include('customers.urls')),  # Remove if not in use
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)