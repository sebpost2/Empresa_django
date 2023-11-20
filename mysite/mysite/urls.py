"""
URL configuration for mysite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from myapp.views import homepage_view
from myapp.views import respuestas_foro
from myapp.views import materials_view
from myapp.views import Tutores_view
from myapp.views import Tutores_perfil
from myapp.views import principal_view

urlpatterns = [
  path('',homepage_view,name="home"),
  path('respuesta/<int:pk>/',respuestas_foro,name="respuesta"),
  path('material',materials_view,name="material"),
  path('tutores',Tutores_view,name="tutores"),
  path('tutores/<int:pk>/',Tutores_perfil,name="tutores"),
  path('principal',principal_view,name="principal")
]
