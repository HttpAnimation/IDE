# compile.sh

echo "Compiling"
gcc -o Kilt main.c `pkg-config --cflags --libs gtk+-3.0`
echo "Done"