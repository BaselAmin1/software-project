from django.urls import path
from . import views

urlpatterns =[

    # path('signup/',views.signup),

    path('',views.getRoutes),
    
    path('bmws/',views.getBmws),
    path('bmw/<pk>/',views.getBmw),

     path('jeeps/',views.getJeeps),
    path('jeep/<pk>/',views.getJeep),

    path('porsches/',views.getPorsches),
    path('porsche/<pk>/',views.getPorsche),

    path('ferraris/',views.getFerraris),
    path('ferrari/<pk>/',views.getFerrari),

    path('fords/',views.getFords),
    path('ford/<pk>/',views.getFord),

    path('donkey/',views.getDonkey),

    # path('bmw/create/',views.addBmw),
    # path('bmw/<pk>/update/',views.updateBmw),
    # path('bmw/<pk>/delete/',views.deleteBmw),
]