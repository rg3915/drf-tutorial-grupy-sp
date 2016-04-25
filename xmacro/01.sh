rm -rf temp
mkdir temp

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

cat << EOF > temp/deleteall.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 1,
KeyStrPress Shift_R KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_R
String d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deletalinha2.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 2d
KeyStrPress Return KeyStrRelease Return
EOF

echo "String i" > temp/edit.txt

### opensettings.txt ###
cat << EOF > temp/opensettings.txt
String vim teste.py
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


### settings.txt ###
cat << EOF > temp/settings.txt
String     'rest_framework',
KeyStrPress Return KeyStrRelease Return
String     'myproject.core',
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

xmacroplay -d 3 < temp/alternar.txt
sleep 1
xmacroplay -d 10 < temp/limpar.txt
sleep 1
xmacroplay -d 60 < temp/opensettings.txt
sleep 1
xmacroplay -d 10 < temp/edit.txt
sleep 1
xmacroplay -d 60 < temp/settings.txt # editar
sleep 1
xmacroplay -d 60 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt



continuar

xmacroplay -d 60 < temp/salvarfechar.txt
echo "continuar"


# continuar

# xmacroplay -d 3 < temp/alternar.txt
# for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
# for i in $(seq 1 20); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 15 < temp/fim.txt

# rm -f *.py