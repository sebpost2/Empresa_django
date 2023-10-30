from django.db import models

class pregunta(models.Model):
    Fecha = models.DateTimeField(auto_now_add=True)
    Descripcion = models.CharField(max_length=1000)
    Carrera = models.CharField(max_length=25)
    Votos=models.IntegerField()
