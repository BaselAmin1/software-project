from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import CarSerializer
from .models import Bmw,Ford,Ferrari,Porsche,Donkey

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
# @api_view(['POST'])
# def signup(request):
#     form=UserCreationForm()
#     data={'form':form}
#     user =User.objects.create(
#         body =data['body'] 
#     )
#     serializer=UserSerializer(user,many=False)
#     return Response(serializer.data)

@api_view(['GET'])
def getBmws(request):
    bmw = Bmw.objects.all()
    serializer = CarSerializer(bmw, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getBmw(request,pk):
    bmw = Bmw.objects.get(id=pk)
    serializer = CarSerializer(bmw, many=False)
    return Response(serializer.data)

@api_view(['GET'])
def getPorsches(request):
    porsche  = Porsche.objects.all()
    serializer = CarSerializer(porsche, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getPorsche(request,pk):
    porsche = Porsche.objects.get(id=pk)
    serializer = CarSerializer(porsche, many=False)
    return Response(serializer.data)

@api_view(['GET'])
def getFerraris(request):
    ferrari = Ferrari.objects.all()
    serializer = CarSerializer(ferrari, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getFerrari(request,pk):
    ferrari = Ferrari.objects.get(id=pk)
    serializer = CarSerializer(ferrari, many=False)
    return Response(serializer.data)

@api_view(['GET'])
def getFords(request):
    ford = Ford.objects.all()
    serializer = CarSerializer(ford, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getFord(request,pk):
    ford = Ford.objects.get(id=pk)
    serializer = CarSerializer(ford, many=False)
    return Response(serializer.data)

@api_view(['GET'])
def getDonkey(request,pk):
    donkey = Donkey.objects.get(id=pk)
    serializer = CarSerializer(donkey, many=False)
    return Response(serializer.data)

# @api_view(['POST'])
# def addBmw(request):
#     data =request.data
#     bmw =Bmw.objects.create(
#         body =data['body']
#     )
#     serializer=CarSerializer(bmw,many=False)
#     return Response(serializer.data)

# @api_view(['PUT'])
# def updateBmw(request,pk):

#     bmw =Bmw.objects.get(id=pk)
#     serializer=CarSerializer(bmw,data=request.data)
#     if serializer.is_valid():
#         serializer.save()
#     return Response(serializer.data)


# @api_view(['DELETE'])
# def deleteBmw(request,pk):
#     bmw = Bmw.objects.get(id=pk)
#     bmw.delete()
#     return Response('car was deleted.')

