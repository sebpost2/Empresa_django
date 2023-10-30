from django.shortcuts import render
from myapp.models import pregunta

def homepage_view(request):
  preguntas=pregunta.objects.all()
  return render(request, 'Foro.html',{'preguntas': preguntas} )
