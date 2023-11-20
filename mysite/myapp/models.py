from django.db import models

class Usuario(models.Model):
    nickname = models.CharField(max_length=25, null=False)
    nombre_completo = models.CharField(max_length=100, null=False)
    contraseña = models.CharField(max_length=1000, null=False)
    Es_tutor = models.BooleanField(default=False)

class Tutor(models.Model):
    usuario_tutor = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=False)
    descripcion = models.CharField(max_length=1000, null=False)
    precio=models.IntegerField(null=False)
    numero=models.IntegerField(null=False)

class Valoraciones(models.Model):
    usuario_valoraciones = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=False)
    tutor_valoraciones = models.ForeignKey(Tutor, on_delete=models.CASCADE, null=False)
    estrellas=models.IntegerField(null=False)
    comentario = models.CharField(max_length=200, null=False)    

class Material(models.Model):
    usuario_material = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=False)
    autor = models.CharField(max_length=45, null=True)
    titulo = models.CharField(max_length=45, null=False)
    archivo=models.FileField(upload_to='uploads/', null=False)
    categorias = models.CharField(max_length=45, null=False)

class Pregunta(models.Model):
    usuario_pregunta = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    fecha = models.DateTimeField(auto_now_add=True, null=False)
    descripcion = models.CharField(max_length=1000, null=False)
    carrera = models.CharField(max_length=25, null=False)
    votos=models.IntegerField(null=False)

class Respuesta(models.Model):
    usuario_respuesta = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=False)
    pregunta_respuesta = models.ForeignKey(Pregunta, on_delete=models.CASCADE, null=False)
    respuesta = models.CharField(max_length=1000, null=False)
    votos=models.IntegerField(null=False)



