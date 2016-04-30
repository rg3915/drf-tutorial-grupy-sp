echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

echo "KeyStrPress Control_L KeyStrPress c KeyStrRelease c KeyStrRelease Control_L" > temp/ctrl_c.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "String i" > temp/edit.txt

echo "KeyStrPress Escape KeyStrRelease Escape" > temp/esc.txt

cat << EOF > temp/exit.txt
String exit
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/openxmacroteste.txt
String vim xmacroteste.sh
KeyStrPress Return KeyStrRelease Return
EOF

### inicio
cat << EOF > temp/xmacroteste.txt
String echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/limpar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/open_sqlite.txt
KeyStrPress Return KeyStrRelease Return
String String sqlite3 db.sqlite3
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/tables.txt
KeyStrPress Return KeyStrRelease Return
String String .tables
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/select.txt
KeyStrPress Return KeyStrRelease Return
String String select 
KeyStrPress Shift_L KeyStrPress 8 KeyStrRelease 8 KeyStrRelease Shift_L
String  from core_person;
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/exit.txt
KeyStrPress Return KeyStrRelease Return
String String .exit
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String answer="s"
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar(){
KeyStrPress Return KeyStrRelease Return
String     read -p "Deseja continuar? (S/n): " answer
KeyStrPress Return KeyStrRelease Return
String     answer=
KeyStrPress Shift_L KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_L
String {answer:-s}
KeyStrPress Return KeyStrRelease Return
String     if [ "
KeyStrPress Shift_L KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_L
String answer" == "s" ]; then
KeyStrPress Return KeyStrRelease Return
String         continue;
KeyStrPress Return KeyStrRelease Return
String         xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
String     fi
KeyStrPress Return KeyStrRelease Return
String }
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  xmacroplay
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
String sleep 1
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/limpar.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/open_sqlite.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/tables.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/select.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/exit.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
EOF
###

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

cat << EOF > temp/digitar.txt
String source xmacroteste.sh
EOF



# xmacroplay
xmacroplay -d 3 < temp/alternar.txt
sleep 1
xmacroplay -d 25 < temp/ctrl_c.txt
sleep 2
xmacroplay -d 25 < temp/exit.txt
sleep 1
xmacroplay -d 25 < temp/limpar.txt
sleep 1
for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
sleep 1
xmacroplay -d 25 < temp/limpar.txt
xmacroplay -d 60 < temp/openxmacroteste.txt
sleep 0.5
xmacroplay -d 10 < temp/edit.txt
sleep 0.5
xmacroplay -d 15 < temp/xmacroteste.txt # velocidade 30
sleep 1
xmacroplay -d 15 < temp/esc.txt
sleep 1
xmacroplay -d 15 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

xmacroplay -d 15 < temp/digitar.txt
