from django.urls import path
from . import views

urlpatterns =[
    path('',views.getRoutes),
    path('cars/',views.getCars),
    path('cars/create/',views.addCar),
    path('cars/<pk>/',views.getCar),
    path('cars/<pk>/update/',views.updateCar),
    path('cars/<pk>/delete/',views.deleteCar),
]