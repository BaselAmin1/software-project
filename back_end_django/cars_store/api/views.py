from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import CarSerializer
from .models import Car

@api_view(['GET',])
def getRoutes(request):
    routes =[
        {
            'Endpoint':'/cars/',
            'method':'GET',
            'description':'Returns an array of cars',
        },
        {
            'Endpoint':'/cars/id',
            'method':'GET',
            'description':'Returns details of car',
        }
    ]
    return Response(routes)

@api_view(['GET'])
def getCars(request):
    cars = Car.objects.all()
    serializer = CarSerializer(cars, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getCar(request,pk):
    car = Car.objects.get(id=pk)
    serializer = CarSerializer(car, many=False)
    return Response(serializer.data)

@api_view(['POST'])
def addCar(request):
    data =request.data
    car =Car.objects.create(
        body =data['body']
    )
    serializer=CarSerializer(car,many=False)
    return Response(serializer.data)

@api_view(['PUT'])
def updateCar(request,pk):

    car =Car.objects.get(id=pk)
    serializer=CarSerializer(car,data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


@api_view(['DELETE'])
def deleteCar(request,pk):
    car = Car.objects.get(id=pk)
    car.delete()
    return Response('car was deleted.')

