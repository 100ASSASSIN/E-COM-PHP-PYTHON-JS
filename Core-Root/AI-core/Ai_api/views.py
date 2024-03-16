from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse

def members(request):
    template = loader.get_template('page.html')
    return HttpResponse(template.render({}, request))
