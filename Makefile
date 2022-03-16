CC=gcc 
CFLAGS=-Wall -Werror -c
SOURCE=src/chessviz/
LIBSOURCE=src/libchessviz/
INCLUDEPATH=-I src
all: chessviz clean
chessviz: main.o libchessviz.a
	gcc -o chessviz main.o libchessviz.a 
libchessviz.a: Dvizenie.o Fill_doska_in_begin.o Proverka_vvedennogo.o Vivod_doski.o Vzatie.o
	ar rcs libchessviz.a Dvizenie.o Fill_doska_in_begin.o Proverka_vvedennogo.o Vivod_doski.o Vzatie.o
main.o: 
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(SOURCE)main.c
Dvizenie.o: 
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(LIBSOURCE)Dvizenie.c
Fill_doska_in_begin.o:
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(LIBSOURCE)Fill_doska_in_begin.c
Proverka_vvedennogo.o:
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(LIBSOURCE)Proverka_vvedennogo.c
Vivod_doski.o:
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(LIBSOURCE)Vivod_doski.c
Vzatie.o:
	$(CC) $(CFLAGS) $(INCLUDEPATH) $(LIBSOURCE)Vzatie.c
clean:
	rm -rf *.o *.a
.PHONY: chessviz clean





