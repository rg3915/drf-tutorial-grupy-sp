rm -rf temp
mkdir temp

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

cat << EOF > temp/deletalinha2.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 2d
KeyStrPress Return KeyStrRelease Return
EOF

echo "String i" > temp/edit.txt

cat << EOF > temp/venv.txt
String python -m venv .venv
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/activate.txt
String source .venv/bin/activate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/enterfolder.txt
String mkdir drf-tutorial-grupy-sp; cd drf-tutorial-grupy-sp
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/install.txt
String pip install django==1.9.5 djangorestframework==3.3.3
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/pip.txt
String pip install -U pip
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/freeze.txt
String pip freeze > requirements.txt; cat requirements.txt
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/startproject.txt
String django-admin.py startproject myproject .
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/cdmyproject.txt
String cd myproject
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/startapp.txt
String python ../manage.py startapp core
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/voltarpasta.txt
String cd ..
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/migrate.txt
String python manage.py migrate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/createsuperuser.txt
String python manage.py createsuperuser  --username='admin' --email=''
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/password.txt
String demodemo
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/password.txt
String cd myproject
KeyStrPress Return KeyStrRelease Return
EOF


## opensettings.txt ##
cat << EOF > temp/opensettings.txt
String vim settings.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvar.txt
KeyStrPress Escape KeyStrRelease Escape
String :w
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/find_staticfiles.txt
String /staticfiles
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/newlinebelow.txt
String o
EOF


## settings.txt ##
cat << EOF > temp/settings.txt
String     'rest_framework',
KeyStrPress Return KeyStrRelease Return
String     'myproject.core',
EOF

## tree.txt ##
cat << EOF > temp/tree.txt
String tree myproject/core
KeyStrPress Return KeyStrRelease Return
EOF

## tree.txt ##
cat << EOF > temp/treeproject.txt
String tree myproject
KeyStrPress Return KeyStrRelease Return
EOF


## openserializers.txt ##
cat << EOF > temp/openserializers.txt
String vim myproject/core/serializers.py
KeyStrPress Return KeyStrRelease Return
EOF


## serializers.txt ##
cat << EOF > temp/serializers.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String serializers.py
KeyStrPress Return KeyStrRelease Return
String from django.contrib.auth.models import User
KeyStrPress Return KeyStrRelease Return
String from rest_framework import serializers
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String class UserSerializer(serializers.ModelSerializer):
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     class Meta:
KeyStrPress Return KeyStrRelease Return
String         model = User
KeyStrPress Return KeyStrRelease Return
String         fields = ('url', 'username', 'email')
KeyStrPress Return KeyStrRelease Return
EOF

## openviews.txt ##
cat << EOF > temp/openviews.txt
String vim myproject/core/views.py
KeyStrPress Return KeyStrRelease Return
EOF


## views.txt ##
cat << EOF > temp/views.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String views.py
KeyStrPress Return KeyStrRelease Return
String from django.contrib.auth.models import User
KeyStrPress Return KeyStrRelease Return
String from rest_framework import viewsets
KeyStrPress Return KeyStrRelease Return
String from myproject.core.serializers import UserSerializer
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String class UserViewSet(viewsets.ModelViewSet):
KeyStrPress Return KeyStrRelease Return
String     queryset = User.objects.all().order_by('-date_joined')
KeyStrPress Return KeyStrRelease Return
String     serializer_class = UserSerializer
KeyStrPress Return KeyStrRelease Return
EOF

## openurls.txt ##
cat << EOF > temp/openurls.txt
String vim myproject/urls.py
KeyStrPress Return KeyStrRelease Return
EOF


## urls.txt ##
cat << EOF > temp/urls.txt
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String urls.py
KeyStrPress Return KeyStrRelease Return
String from django.conf.urls import url, include
KeyStrPress Return KeyStrRelease Return
String from rest_framework import routers
KeyStrPress Return KeyStrRelease Return
String from myproject.core import views
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String router = routers.DefaultRouter()
KeyStrPress Return KeyStrRelease Return
String router.register(r'users', views.UserViewSet)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String urlpatterns = [
KeyStrPress Return KeyStrRelease Return
String     url(r'
KeyStrPress Shift_R KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrRelease Shift_R
String ', include(router.urls)),
KeyStrPress Return KeyStrRelease Return
String     url(r'
KeyStrPress Shift_R KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrRelease Shift_R
String api-auth/', include('rest_framework.urls', namespace='rest_framework'))
KeyStrPress Return KeyStrRelease Return
String ]
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/fim.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String Fim!!!
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String     github.com/rg3915/drf-tutorial-grupy-sp
KeyStrPress Return KeyStrRelease Return
EOF



## rmteste.txt ##
cat << EOF > temp/rmteste.txt
String rm -f teste.py
KeyStrPress Return KeyStrRelease Return
EOF

## rmserializerstemp.txt ##
cat << EOF > temp/rmserializerstemp.txt
String rm -f myproject/core/serializerstemp.py
KeyStrPress Return KeyStrRelease Return
EOF

## rmviewstemp.txt ##
cat << EOF > temp/rmviewstemp.txt
String rm -f myproject/core/viewstemp.py
KeyStrPress Return KeyStrRelease Return
EOF

## rmurlstemp.txt ##
cat << EOF > temp/rmurlstemp.txt
String rm -f myproject/urlstemp.py
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

# settings.py
xmacroplay -d 3 < temp/alternar.txt
sleep 1

# temp
# xmacroplay -d 10 < temp/rmteste.txt
# sleep 0.5
# xmacroplay -d 10 < temp/rmserializerstemp.txt
# sleep 0.5
# xmacroplay -d 10 < temp/rmviewstemp.txt
# sleep 0.5
# xmacroplay -d 10 < temp/rmurlstemp.txt

xmacroplay -d 25 < temp/venv.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/activate.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/enterfolder.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/install.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/pip.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 25 < temp/freeze.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 25 < temp/startproject.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/cdmyproject.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/startapp.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/voltarpasta.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/treeproject.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/migrate.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 25 < temp/createsuperuser.txt
xmacroplay -d 3 < temp/alternar.txt
continuar
xmacroplay -d 25 < temp/password.txt
sleep 0.5
xmacroplay -d 25 < temp/password.txt
xmacroplay -d 3 < temp/alternar.txt
continuar

xmacroplay -d 10 < temp/limpar.txt
xmacroplay -d 25 < temp/cdmyproject.txt
sleep 1
xmacroplay -d 25 < temp/opensettings.txt
sleep 1
xmacroplay -d 25 < temp/find_staticfiles.txt
xmacroplay -d 25 < temp/newlinebelow.txt
sleep 1
xmacroplay -d 25 < temp/settings.txt # editar
sleep 1
xmacroplay -d 25 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/salvarfechar.txt
xmacroplay -d 10 < temp/limpar.txt
xmacroplay -d 25 < temp/tree.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

# serializers.py
xmacroplay -d 10 < temp/limpar.txt
sleep 1
xmacroplay -d 25 < temp/openserializerstxt
sleep 1
xmacroplay -d 10 < temp/edit.txt
sleep 1
xmacroplay -d 25 < temp/serializerstxt # editar
sleep 1
xmacroplay -d 25 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/salvarfechar.txt

# views.py
xmacroplay -d 10 < temp/limpar.txt
sleep 1
xmacroplay -d 25 < temp/openviewstxt
sleep 1
xmacroplay -d 10 < temp/edit.txt
sleep 1
xmacroplay -d 25 < temp/viewstxt # editar
sleep 1
xmacroplay -d 25 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/salvarfechar.txt

# urls.py
xmacroplay -d 10 < temp/limpar.txt
sleep 1
xmacroplay -d 25 < temp/openurlstxt
sleep 1
xmacroplay -d 10 < temp/edit.txt
sleep 1
xmacroplay -d 25 < temp/urlstxt # editar
sleep 1
xmacroplay -d 25 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 25 < temp/salvarfechar.txt


# for i in $(seq 1 20); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 15 < temp/fim.txt

# rm -f *.py