from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import CarSerializer
from .models import Bmw,Ford,Ferrari,Porsche,Donkey,Jeep

@api_view(['GET',])
def getRoutes(request):
    routes =[
        {
            'Endpoint':'/bmws/',
            'method':'GET',
            'description':'Returns an array of bmw cars',
        },
        {
            'Endpoint':'/bmw/id',
            'method':'GET',
            'description':'Returns details of bmw car',
        }, {
            'Endpoint':'/porsches/',
            'method':'GET',
            'description':'Returns an array of porsche cars',
        }, {
            'Endpoint':'/porsche/id',
            'method':'GET',
            'description':'Returns details of porsche car',
        }, {
            'Endpoint':'/ferarris/',
            'method':'GET',
            'description':'Returns an array of ferrari cars',
        }, {
            'Endpoint':'/ferrari/id',
            'method':'GET',
            'description':'Returns details of ferrari car',
        }, {
            'Endpoint':'/fords/',
            'method':'GET',
            'description':'Returns an array of ford cars',
        }, {
            'Endpoint':'/ford/id',
            'method':'GET',
            'description':'Returns details of ford car',
        }, {
            'Endpoint':'/jeeps/',
            'method':'GET',
            'description':'Returns an array of jeep cars',
        }, {
            'Endpoint':'/jeep/id',
            'method':'GET',
            'description':'Returns details of jeep car',
        }, 
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
def getJeeps(request):
    jeep = Jeep.objects.all()
    serializer = CarSerializer(jeep, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getJeep(request,pk):
    jeep = Jeep.objects.get(id=pk)
    serializer = CarSerializer(jeep, many=False)
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

