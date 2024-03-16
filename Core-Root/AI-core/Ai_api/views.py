from django.shortcuts import render
from django.http import JsonResponse
from core.config import factorial 
from django.urls import path
from Ai_api import views
# Assuming 'new' is a variable you want to include in your response
new = "ASSASSIN"

def api(request):
    # Calculate the factorial
    result = factorial(5)

    # Create a dictionary to be returned as JSON
    data = {"new": new, "factorial_result": result}

    # Use JsonResponse to automatically convert your dictionary to JSON format
    return JsonResponse(data)

def page1(request):
    content = "This is Page 1"
    return render(request, 'page.html', {'content': content})

def page2(request):
    content = "This is Page 2"
    return render(request, 'app_name/page.html', {'content': content})

def page3(request):
    content = "This is Page 3"
    return render(request, 'app_name/page.html', {'content': content})

def page4(request):
    content = "This is Page 4"
    return render(request, 'app_name/page.html', {'content': content})

def page5(request):
    content = "This is Page 5"
    return render(request, 'app_name/page.html', {'content': content})
