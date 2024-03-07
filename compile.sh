# compile.sh

echo "Compiling"
gcc -o IDE main.c `pkg-config --cflags --libs gtk+-3.0`
echo "Done"