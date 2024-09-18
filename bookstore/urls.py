from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from .views import login_view, logout_view

urlpatterns = [
    path('admin/', admin.site.urls),  # Django admin
    path('', include('sales.urls')),  # Main homepage uses the sales app
    path('books/', include('books.urls')),  # Routes to the books app
    path('login/', login_view, name='login'),  # Login view
    path('logout/', logout_view, name='logout'),  # Logout view
]

# Adding media/static file serving in debug mode
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
