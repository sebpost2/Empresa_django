from django.shortcuts import render
from myapp.models import Pregunta
from myapp.models import Respuesta

def homepage_view(request):
  preguntas=Pregunta.objects.all()
  return render(request, 'main/Foro.html',{'preguntas': preguntas} )

def respuestas_foro(request,pk):
  #respuestas=Pregunta.objects.filter(id=pk)
  respuestas=Respuesta.objects.filter(pregunta_respuesta_id=pk)
  return render(request, 'main/respuesta.html',{'respuestas':respuestas})