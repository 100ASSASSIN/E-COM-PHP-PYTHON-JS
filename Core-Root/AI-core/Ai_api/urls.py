from django.urls import path
from . import views

urlpatterns = [
    path('Ai_api/', views.members, name='members'),
]