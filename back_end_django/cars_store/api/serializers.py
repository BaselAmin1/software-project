from rest_framework.serializers import ModelSerializer
from .models import Bmw

class CarSerializer(ModelSerializer):
    class Meta:
        model = Bmw
        fields = '__all__'