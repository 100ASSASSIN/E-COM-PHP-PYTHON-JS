from django.shortcuts import render
from django.http import JsonResponse
from core.config import factorial 

# Assuming 'new' is a variable you want to include in your response
new = "ASSASSIN"

def api(request):
    # Calculate the factorial
    result = factorial(5)

    # Create a dictionary to be returned as JSON
    data = {"new": new, "factorial_result": result}

    # Use JsonResponse to automatically convert your dictionary to JSON format
    return JsonResponse(data)
