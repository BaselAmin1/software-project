from django.urls import path
from . import views

urlpatterns =[
    path('',views.getRoutes),
    path('signup/',views.signup),
    path('bmws/',views.getBmws),
    path('bmw/create/',views.addBmw),
    path('bmw/<pk>/',views.getBmw),
    path('bmw/<pk>/update/',views.updateBmw),
    path('bmw/<pk>/delete/',views.deleteBmw),
]