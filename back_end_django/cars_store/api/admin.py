from django.contrib import admin

# Register your models here.
from .models import Bmw,Ferrari,Ford,Porsche,Donkey,Jeep
admin.site.register(Bmw)
admin.site.register(Ferrari)
admin.site.register(Ford)
admin.site.register(Porsche)
admin.site.register(Donkey)
admin.site.register(Jeep)
