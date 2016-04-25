mkdir temp
echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " > temp/alternar.txt

### opennumeropar.txt ###
cat << EOF > temp/opennumeropar.txt
String vim numero_par.py
KeyStrPress Return KeyStrRelease Return
EOF
### opennumeropar.txt ###

echo "String i" > temp/edit.txt

def tests():
    assert par(0) == True


# xmacroplay
for i in $(seq 1 2); do xmacroplay -d 3 < temp/down.txt; done
opennumeropar.txt
edit.txt
