from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('', include('Ai_api.urls')),
    path('admin/', admin.site.urls),
]