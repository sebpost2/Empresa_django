from django.shortcuts import render
from myapp.models import Pregunta
from myapp.models import Respuesta
from myapp.models import Material
from myapp.models import Usuario
from myapp.models import Tutor
from myapp.models import Valoraciones
from django.core.files.storage import FileSystemStorage

def homepage_view(request):
  preguntas=Pregunta.objects.all()
  return render(request, 'main/Foro.html',{'preguntas': preguntas} )

def respuestas_foro(request,pk):
  #respuestas=Pregunta.objects.filter(id=pk)
  respuestas=Respuesta.objects.filter(pregunta_respuesta_id=pk)
  return render(request, 'main/respuesta.html',{'respuestas':respuestas})

def materials_view(request):
  materiales=Material.objects.all()
  return render(request, 'main/material.html',{'materiales':materiales})

def Tutores_view(request):
  usuarios=Usuario.objects.raw("select * from myapp_tutor inner join myapp_usuario on usuario_tutor_id=myapp_usuario.id")
  context = {
    'usuarios':usuarios,
}
  return render(request, 'main/tutores.html',context)

def Tutores_perfil(request,pk):
  tutores=Tutor.objects.filter(usuario_tutor_id=pk)
  params = [pk]
  raw_sql = "select * from myapp_valoraciones inner join myapp_usuario on usuario_valoraciones_id=myapp_usuario.id where usuario_valoraciones_id=%s"
  valoraciones=Valoraciones.objects.raw(raw_sql,params)
  context = {
    'tutores':tutores,
    'valoraciones':valoraciones
  }
  return render(request, 'main/tutores_perfil.html',context)

def principal_view(request):
  tutores=Usuario.objects.raw("select * from myapp_tutor inner join myapp_usuario on usuario_tutor_id=myapp_usuario.id limit 2")
  materiales=Material.objects.raw("select * from myapp_material limit 2")
  preguntas=Pregunta.objects.raw("select * from myapp_pregunta limit 2")
  context = {
    'tutores':tutores,
    'materiales':materiales,
    'preguntas':preguntas
  }
  return render(request, 'main/principal.html',context)

def upload(request):
  if request.method == 'POST':
    uploaded_file = request.FILES("file")
    fs = FileSystemStorage()
    fs.save(uploaded_file.name,uploaded_file)
  return render(request, 'main/new_tutor.html')