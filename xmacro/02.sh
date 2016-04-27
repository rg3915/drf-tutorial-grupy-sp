echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress e KeyStrRelease e KeyStrRelease Control_L KeyStrRelease Shift_L" > temp/ctrl_e.txt

echo "KeyStrPress Control_L KeyStrPress c" > temp/ctrl_c.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Left KeyStrRelease Left KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/left.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Right KeyStrRelease Right KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/right.txt

echo "KeyStrPress Shift_R KeyStrPress g KeyStrRelease g KeyStrRelease Shift_R" > temp/gotolastline.txt

echo "KeyStrPress Shift_R KeyStrPress r KeyStrRelease r KeyStrRelease Shift_R" > temp/replace.txt

echo "KeyStrPress Shift_R KeyStrPress a KeyStrRelease a KeyStrRelease Shift_R" > temp/insert_end_line.txt

echo "KeyStrPress Left KeyStrRelease Left" > temp/goto_left.txt

echo "KeyStrPress j KeyStrRelease j" > temp/down.txt

echo "KeyStrPress Escape KeyStrRelease Escape" > temp/esc.txt

cat << EOF > temp/deletalinha.txt
String dd
EOF

cat << EOF > temp/deletalinha3.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 3d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deleteall.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 1,
KeyStrPress Shift_R KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_R
String d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/exit.txt
String exit
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/sair.txt
String exit()
KeyStrPress Return KeyStrRelease Return
EOF

echo "String i" > temp/edit.txt

cat << EOF > temp/gotoline4.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 4
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/gotoline5.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 5
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/gotoline10.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 10
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/gotoline14.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 14
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/voltarpasta.txt
String cd ..
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/serialization.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Serialization
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Project: myproject
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  App: core
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Model: Person
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Fields: first_name, last_name, email, active (boolean), created
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/cdmyproject.txt
String cd myproject
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/newlinebelow.txt
String o
EOF

cat << EOF > temp/openmodels.txt
String vim core/models.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/models.txt
String class Person(models.Model):
KeyStrPress Return KeyStrRelease Return
String     first_name = models.CharField(max_length=30)
KeyStrPress Return KeyStrRelease Return
String     last_name = models.CharField(max_length=30)
KeyStrPress Return KeyStrRelease Return
String     email = models.EmailField(null=True, blank=True)
KeyStrPress Return KeyStrRelease Return
String     active = models.BooleanField(default=True)
KeyStrPress Return KeyStrRelease Return
String     created = models.DateTimeField(auto_now_add=True, auto_now=False)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     class Meta:
KeyStrPress Return KeyStrRelease Return
String         ordering = ['first_name']
KeyStrPress Return KeyStrRelease Return
String         verbose_name = u'pessoa'
KeyStrPress Return KeyStrRelease Return
String         verbose_name_plural = u'pessoas'
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def __str__(self):
KeyStrPress Return KeyStrRelease Return
String         return self.first_name + " " + self.last_name
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     full_name = property(__str__)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msgserializers.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  serializers.py novamente
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/openserializers.txt
String vim core/serializers.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/serializers.txt
String from myproject.core.models import Person
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/serializers2.txt
KeyStrPress Return KeyStrRelease Return
String class PersonSerializer(serializers.Serializer):
KeyStrPress Return KeyStrRelease Return
String     pk = serializers.IntegerField(read_only=True)
KeyStrPress Return KeyStrRelease Return
String     first_name = serializers.CharField(max_length=30)
KeyStrPress Return KeyStrRelease Return
String     last_name = serializers.CharField(max_length=30)
KeyStrPress Return KeyStrRelease Return
String     email = serializers.EmailField()
KeyStrPress Return KeyStrRelease Return
String     active = serializers.BooleanField(default=True)
KeyStrPress Return KeyStrRelease Return
String     created = serializers.DateTimeField()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/serializers3.txt
KeyStrPress Return KeyStrRelease Return
String     def create(self, validated_data):
KeyStrPress Return KeyStrRelease Return
String         """
KeyStrPress Return KeyStrRelease Return
String         Cria e retorna uma nova instancia Person, pedindo a data valida.
KeyStrPress Return KeyStrRelease Return
String         :param validated_data:
KeyStrPress Return KeyStrRelease Return
String         """
KeyStrPress Return KeyStrRelease Return
String         return Person.objects.create(**validated_data)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def update(self, instance, validated_data):
KeyStrPress Return KeyStrRelease Return
String         """
KeyStrPress Return KeyStrRelease Return
String         Atualiza e retorna uma nova instancia Person, pedindo a data valida.
KeyStrPress Return KeyStrRelease Return
String         """
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String         instance.first_name = validated_data.get('first_name', instance.first_name)
KeyStrPress Return KeyStrRelease Return
String         instance.last_name = validated_data.get('last_name', instance.last_name)
KeyStrPress Return KeyStrRelease Return
String         instance.email = validated_data.get('email', instance.email)
KeyStrPress Return KeyStrRelease Return
String         instance.save()
KeyStrPress Return KeyStrRelease Return
String         return instance
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msgmigration.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String Fazendo a migracao
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/migrate.txt
String python manage.py makemigrations core; python manage.py migrate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell.txt
String python manage.py shell
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell1.txt
String from myproject.core.models import Person
KeyStrPress Return KeyStrRelease Return
String from myproject.core.serializers import PersonSerializer
KeyStrPress Return KeyStrRelease Return
String from rest_framework.renderers import JSONRenderer
KeyStrPress Return KeyStrRelease Return
String from rest_framework.parsers import JSONParser
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell2.txt
String person = Person(first_name='Paul', last_name='van Dyk', email='paul@email.com')
KeyStrPress Return KeyStrRelease Return
String person.save()
KeyStrPress Return KeyStrRelease Return
String person = Person(first_name='Regis', last_name='Santos', email='regis@email.com')
KeyStrPress Return KeyStrRelease Return
String person.save()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell3.txt
String serializer = PersonSerializer(person)
KeyStrPress Return KeyStrRelease Return
String serializer.data
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell4.txt
String content = JSONRenderer().render(serializer.data)
KeyStrPress Return KeyStrRelease Return
String content
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msgserializers2.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Refatorando o serializers.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/serializers4.txt
String Model
EOF

cat << EOF > temp/serializers5.txt
KeyStrPress Return KeyStrRelease Return
String     class Meta:
KeyStrPress Return KeyStrRelease Return
String         model = Person
KeyStrPress Return KeyStrRelease Return
String         fields = ('pk', 'first_name', 'last_name','email', 'active', 'created')
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/shell5.txt
String from myproject.core.serializers import PersonSerializer
KeyStrPress Return KeyStrRelease Return
String serializer = PersonSerializer()
KeyStrPress Return KeyStrRelease Return
String print(repr(serializer))
KeyStrPress Return KeyStrRelease Return
EOF




cat << EOF > temp/openviews.txt
String vim myproject/core/views.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/views1.txt
String from django.http import HttpResponse
KeyStrPress Return KeyStrRelease Return
String from django.views.decorators.csrf import csrf_exempt
KeyStrPress Return KeyStrRelease Return
String from rest_framework.renderers import JSONRenderer
KeyStrPress Return KeyStrRelease Return
String from rest_framework.parsers import JSONParser
KeyStrPress Return KeyStrRelease Return
String from myproject.core.models import Person
KeyStrPress Return KeyStrRelease Return
String from myproject.core.serializers import PersonSerializer
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/views2.txt
String class JSONResponse(HttpResponse):
KeyStrPress Return KeyStrRelease Return
String     """ An HttpResponse that renders its content into JSON. """
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def __init__(self, data, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         content = JSONRenderer().render(data)
KeyStrPress Return KeyStrRelease Return
String         kwargs['content_type'] = 'application/json'
KeyStrPress Return KeyStrRelease Return
String         super(JSONResponse, self).__init__(content, **kwargs)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/views3.txt
String @csrf_exempt
KeyStrPress Return KeyStrRelease Return
String def person_list(request):
KeyStrPress Return KeyStrRelease Return
String     """ List all persons, or create a new person. """
KeyStrPress Return KeyStrRelease Return
String     if request.method == 'GET':
KeyStrPress Return KeyStrRelease Return
String         persons = Person.objects.all()
KeyStrPress Return KeyStrRelease Return
String         serializer = PersonSerializer(persons, many=True)
KeyStrPress Return KeyStrRelease Return
String         return JSONResponse(serializer.data)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     elif request.method == 'POST':
KeyStrPress Return KeyStrRelease Return
String         data = JSONParser().parse(request)
KeyStrPress Return KeyStrRelease Return
String         serializer = PersonSerializer(data=data)
KeyStrPress Return KeyStrRelease Return
String         if serializer.is_valid():
KeyStrPress Return KeyStrRelease Return
String             serializer.save()
KeyStrPress Return KeyStrRelease Return
String             return JSONResponse(serializer.data, status=201)
KeyStrPress Return KeyStrRelease Return
String         return JSONResponse(serializer.errors, status=400)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/views4.txt
String @csrf_exempt
KeyStrPress Return KeyStrRelease Return
String def person_detail(request, pk):
KeyStrPress Return KeyStrRelease Return
String     """ Retrieve, update or delete a person. """
KeyStrPress Return KeyStrRelease Return
String     try:
KeyStrPress Return KeyStrRelease Return
String         person = Person.objects.get(pk=pk)
KeyStrPress Return KeyStrRelease Return
String     except Person.DoesNotExist:
KeyStrPress Return KeyStrRelease Return
String         return HttpResponse(status=404)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     if request.method == 'GET':
KeyStrPress Return KeyStrRelease Return
String         serializer = PersonSerializer(person)
KeyStrPress Return KeyStrRelease Return
String         return JSONResponse(serializer.data)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     elif request.method == 'PUT':
KeyStrPress Return KeyStrRelease Return
String         data = JSONParser().parse(request)
KeyStrPress Return KeyStrRelease Return
String         serializer = PersonSerializer(person, data=data)
KeyStrPress Return KeyStrRelease Return
String         if serializer.is_valid():
KeyStrPress Return KeyStrRelease Return
String             serializer.save()
KeyStrPress Return KeyStrRelease Return
String             return JSONResponse(serializer.data)
KeyStrPress Return KeyStrRelease Return
String         return JSONResponse(serializer.errors, status=400)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     elif request.method == 'DELETE':
KeyStrPress Return KeyStrRelease Return
String         person.delete()
KeyStrPress Return KeyStrRelease Return
String         return HttpResponse(status=204)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msgurls.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  Criar um novo core/urls.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/open_core_urls.txt
String vim myproject/core/urls.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/core_urls.txt
String from django.conf.urls import url
KeyStrPress Return KeyStrRelease Return
String from myproject.core import views
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String urlpatterns = [
KeyStrPress Return KeyStrRelease Return
String     url(r'
KeyStrPress Shift_R KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrRelease Shift_R
String persons/$', views.person_list),
KeyStrPress Return KeyStrRelease Return
String     url(r'
KeyStrPress Shift_R KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrRelease Shift_R
String persons/(?P<pk>[0-9]+)/$', views.person_detail),
KeyStrPress Return KeyStrRelease Return
String ]
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/open_urls.txt
String vim myproject/urls.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/urls.txt
String     url(r'
KeyStrPress Shift_R KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrRelease Shift_R
String api/', include('myproject.core.urls')),
EOF

cat << EOF > temp/runserver.txt
String python manage.py runserver
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/ps1.txt
String PS1="$ "
KeyStrPress Return KeyStrRelease Return
String clear
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/http1.txt
String http http://127.0.0.1:8000/api/persons/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/http2.txt
String http http://127.0.0.1:8000/api/persons/1/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/http3.txt
String http http://127.0.0.1:8000/api/persons/ \
KeyStrPress Return KeyStrRelease Return
String first_name="Guido" last_name="Van Rossum" \
KeyStrPress Return KeyStrRelease Return
String email="guido@email.com"
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/enter.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/fim.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  github.com/rg3915/drf-tutorial-grupy-sp
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  github.com/grupy-sp/encontros
KeyStrPress Return KeyStrRelease Return
EOF

# xmacroplay ----------------------------------------------
answer="s"

continuar(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

continuar2(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

xmacroplay -d 3 < temp/alternar.txt
xmacroplay -d 3 < temp/alternar.txt
sleep 1

xmacroplay -d 25 < temp/exit.txt
sleep 1
xmacroplay -d 25 < temp/ctrl_c.txt
xmacroplay -d 25 < temp/limpar.txt
xmacroplay -d 25 < temp/serialization.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 10 < temp/limpar.txt
sleep 1
xmacroplay -d 15 < temp/cdmyproject.txt
sleep 0.5
xmacroplay -d 15 < temp/openmodels.txt
sleep 1
xmacroplay -d 10 < temp/gotolastline.txt
sleep 0.5
xmacroplay -d 10 < temp/replace.txt
sleep 0.5
xmacroplay -d 15 < temp/models.txt
sleep 1
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/msgserializers.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/openserializers.txt
sleep 1
xmacroplay -d 10 < temp/gotoline4.txt
sleep 0.5
xmacroplay -d 10 < temp/edit.txt
sleep 0.5
xmacroplay -d 15 < temp/serializers.txt
sleep 1
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 10 < temp/esc.txt
xmacroplay -d 10 < temp/gotolastline.txt
xmacroplay -d 10 < temp/newlinebelow.txt
xmacroplay -d 15 < temp/serializers2.txt
sleep 1
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 10 < temp/edit.txt
sleep 0.5
xmacroplay -d 15 < temp/serializers3.txt
sleep 1
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/limpar.txt
xmacroplay -d 15 < temp/voltarpasta.txt
sleep 2
xmacroplay -d 15 < temp/msgmigration.txt
xmacroplay -d 15 < temp/migrate.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/limpar.txt
xmacroplay -d 15 < temp/shell.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/shell1.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/shell2.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/shell3.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/shell4.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/sair.txt
xmacroplay -d 3 < temp/limpar.txt
sleep 2
xmacroplay -d 15 < temp/cdmyproject.txt
xmacroplay -d 5 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/msgserializers2.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/openserializers.txt
sleep 1
xmacroplay -d 5 < temp/gotoline14.txt
xmacroplay -d 5 < temp/insert_end_line.txt
for i in $(seq 1 12); do xmacroplay -d 15 < temp/goto_left.txt; done
xmacroplay -d 15 < temp/serializers4.txt
xmacroplay -d 10 < temp/esc.txt
sleep 2
xmacroplay -d 10 < temp/down.txt
for i in $(seq 1 6); do
    xmacroplay -d 15 < temp/deletalinha.txt
    sleep 1
done
xmacroplay -d 3 < temp/edit.txt
xmacroplay -d 15 < temp/serializers5.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/limpar.txt
xmacroplay -d 25 < temp/voltarpasta.txt
xmacroplay -d 15 < temp/shell.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/shell5.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/sair.txt
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 5 < temp/openviews.txt
xmacroplay -d 5 < temp/gotoline5.txt
xmacroplay -d 5 < temp/edit.txt
sleep 0.5
xmacroplay -d 30 < temp/views1.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/views2.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/views3.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/views4.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/msgurls.txt
sleep 2
xmacroplay -d 15 < temp/open_core_urls.txt
xmacroplay -d 15 < temp/edit.txt
sleep 1
xmacroplay -d 15 < temp/core_urls.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 5 < temp/open_urls.txt
xmacroplay -d 5 < temp/gotoline10.txt
xmacroplay -d 10 < temp/newlinebelow.txt
sleep 0.5
xmacroplay -d 15 < temp/urls.txt
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 15 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/runserver.txt
xmacroplay -d 3 < temp/ctrl_e.txt
sleep 2
xmacroplay -d 60 < temp/ps1.txt
# aumentar a fonte
for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
# limpar a tela
xmacroplay -d 3 < temp/limpar.txt
sleep 2
xmacroplay -d 60 < temp/http1.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 60 < temp/http2.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 60 < temp/http3.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 60 < temp/enter.txt
xmacroplay -d 20 < temp/fim.txt
xmacroplay -d 3 < temp/alternar.txt
