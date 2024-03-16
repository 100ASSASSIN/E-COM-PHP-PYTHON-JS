from django.shortcuts import render
from django.http import JsonResponse
from core import *
# Assuming 'new' is a variable you want to include in your response
new = "ASSASSIN"
#def core(request):
    #data = {"response": response}

    #return JsonResponse(response)
def api(request):
    # Create a dictionary to be returned as JSON
    data = {"new": new}
    # Use JsonResponse to automatically convert your dictionary to JSON format
    return JsonResponse(data)