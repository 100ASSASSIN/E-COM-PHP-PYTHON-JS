from django.urls import path
from . import views

urlpatterns = [
    path('core/', views.members, name='members'),
    path('core2/', views.LINK, name='link'),
    path('', views.view_table_values, name='link'),
]