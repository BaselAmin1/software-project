from rest_framework.serializers import ModelSerializer
from .models import Bmw, User

class CarSerializer(ModelSerializer):
    class Meta:
        model = Bmw
        fields = '__all__'
class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = '"user","password"'
