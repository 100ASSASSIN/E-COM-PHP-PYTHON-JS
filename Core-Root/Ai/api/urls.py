from django.urls import path
from . import views

urlpatterns = [
    path('game/', views.members, name='link'),
]