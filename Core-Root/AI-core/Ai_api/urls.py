from django.urls import path
from . import views

urlpatterns = [
    path('Ai_api/', views.api, name='api'),
]