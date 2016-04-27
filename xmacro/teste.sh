echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

cat << EOF > temp/tree.txt
String tree --help
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/xmacrorec2.txt
String xmacrorec2 --help
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/terminator.txt
String terminator --help
KeyStrPress Return KeyStrRelease Return
EOF

xmacroplay -d 3 < temp/alternar.txt
sleep 1
xmacroplay -d 15 < temp/tree.txt
sleep 3
xmacroplay -d 15 < temp/xmacrorec2.txt
sleep 3
xmacroplay -d 15 < temp/terminator.txt
xmacroplay -d 3 < temp/alternar.txt
