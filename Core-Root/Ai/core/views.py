from django.shortcuts import render
from .models import User

# Create your views here.
from django.http import HttpResponse
from django.template import loader

def members(request):
  template = loader.get_template('index.html')
  return HttpResponse(template.render())
def LINK(request):
  template = loader.get_template('check.html')
  return HttpResponse(template.render())

def view_table_values(request):
    # Retrieve data from the User model
    users = User.objects.all()

    return render(request, 'db.html', {'users': users})