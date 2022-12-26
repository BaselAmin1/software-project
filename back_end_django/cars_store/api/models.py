from django.db import models

# Create your models here.
class Bmw(models.Model):
    model =models.TextField()
    price =models.TextField()
    availabilty=models.BooleanField(default= True)
    #image = models.ImageField(upload_to='images')
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]