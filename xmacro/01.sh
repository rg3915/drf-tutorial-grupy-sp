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
    if [ "$answer" == "s" ]; then continue; fi
}

for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
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

# xmacroplay -d 3 < temp/alternar.txt
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 02.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/02.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 60 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# continuar

# # 03.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/03.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# continuar

# # 04.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line8.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/04.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# # xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 05.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/05.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# # xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# continuar

# # 06.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line8.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 15 < temp/06.txt  # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# sleep 3
# xmacroplay -d 3 < temp/limpar.txt
# for i in $(seq 1 34); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 10 < temp/defmatematica.txt
# sleep 5
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 30 < temp/matematica.txt

# # matematica2.sh
# xmacroplay -d 30 < temp/matematica2.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # separar
# xmacroplay -d 3 < temp/alternar.txt
# for i in $(seq 1 40); do xmacroplay -d 3 < temp/left.txt; done
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # 07.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/07.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 08.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar2.txt
# # xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/08.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 081.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/081.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 082.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/082.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 083.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/083.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 084.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 15 < temp/084.txt # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python02.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python02.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 09.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/09.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python02.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python02.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 10.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar3.txt
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/10.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python03.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python03.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 11.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha5.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/11.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python03.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python03.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 12.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar4.txt
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 15 < temp/12.txt # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python04.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python04.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 13.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/deletalinha5.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/11.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python04.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python04.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # experimente -v
# xmacroplay -d 3 < temp/alternar.txt
# sleep 3
# for i in $(seq 1 10); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 30 < temp/python04v.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 14.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# for i in $(seq 1 10); do xmacroplay -d 3 < temp/left.txt; done
# xmacroplay -d 60 < temp/openmedia.txt
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# for i in $(seq 1 33); do xmacroplay -d 3 < temp/left.txt; done
# xmacroplay -d 60 < temp/14.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# # 140.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/140.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 141.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/141.txt # editar
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # python05.sh
# xmacroplay -d 3 < temp/alternar.txt
# sleep 1
# for i in $(seq 1 40); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python05.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 15.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/deletalinha7.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# xmacroplay -d 60 < temp/15.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python05.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python05.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 16.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line7.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 60 < temp/16.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python05.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python05.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# xmacroplay -d 3 < temp/alternar.txt
# for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
# for i in $(seq 1 20); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 15 < temp/fim.txt

# rm -f *.py