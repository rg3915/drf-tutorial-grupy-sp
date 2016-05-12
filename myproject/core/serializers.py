# serializers.py
from django.contrib.auth.models import User
from rest_framework import serializers
from myproject.core.models import Person


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('url', 'username', 'email')


class PersonSerializer(serializers.ModelSerializer):

    class Meta:
        model = Person
        fields = ('pk', 'first_name', 'last_name',
                  'email', 'active', 'created')

    def create(self, validated_data):
        """
        Cria e retorna uma nova instancia Person, pedindo a data valida.
        :param validated_data:
        """
        return Person.objects.create(**validated_data)

    def update(self, instance, validated_data):
        """
        Atualiza e retorna uma nova instancia Person, pedindo a data valida.
        """

        instance.first_name = validated_data.get(
            'first_name', instance.first_name)
        instance.last_name = validated_data.get(
            'last_name', instance.last_name)
        instance.email = validated_data.get('email', instance.email)
        instance.save()
        return instance
