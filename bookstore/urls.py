from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from .views import home, login_view, logout_view

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home, name='home'),  # Root URL for homepage
    path('sales/', include('sales.urls', namespace='sales')),
    path('books/', include('books.urls', namespace='books')),
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    # Assuming contact has its own URL configuration
    path('contact/', include('contact.urls', namespace='contact')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)