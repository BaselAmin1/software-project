from rest_framework.serializers import ModelSerializer
from .models import Bmw,Porsche,Ferrari,Ford,Donkey

class CarSerializer(ModelSerializer):
    class Meta:
        model = Bmw
        fields = '__all__'
    class Meta:
        model = Porsche
        fields = '__all__'
    class Meta:
        model = Ferrari
        fields = '__all__'
    class Meta:
        model = Ford
        fields = '__all__'
    class Meta:
        model = Donkey
        fields = '__all__'


# class UserSerializer(ModelSerializer):
#     class Meta:
#         model = User
#         fields = '"user","password"'
