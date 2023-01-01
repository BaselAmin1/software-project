from django.db import models

# Create your models here.
class Bmw(models.Model):
    maker =models.TextField(default='BMW')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]

class Porsche(models.Model):
    maker =models.TextField(default='PORSCHE')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]

class Ferrari(models.Model):
    maker =models.TextField(default='FERRARI')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]

class Ford(models.Model):
    maker =models.TextField(default='FORD')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]

class Jeep(models.Model):
    maker =models.TextField(default='JEEP')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]

class Donkey(models.Model):
    maker =models.TextField(default='DONKEY')
    model =models.TextField()
    price =models.TextField()
    caption =models.TextField()
    availabilty=models.BooleanField(default= True)
    image = models.ImageField(null=True,blank=True,upload_to="images/")
    updated =models.DateTimeField(auto_now=True)
    created =models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.model[0:50]

    class Meta:
        ordering =['-updated',]




# class User(models.Model):
#     name =models.TextField()
#     password =models.TextField()
#     updated =models.DateTimeField(auto_now=True)
#     created =models.DateTimeField(auto_now_add=True)
#     def __str__(self):
#         return self.model[0:50]

#     class Meta:
#         ordering =['-updated',]