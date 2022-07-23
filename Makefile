CC = gcc
CFLGAS = -Wall -g
DEPS = feature1.h feature2.h feature3.h feature4.h feature5.h

%.o: %.c $(DEPS)
	$(CC) $< $(CFLAGS) -c -g -o $@

main: main.o feature1.o feature2.o feature3.o feature4.o feature5.o 
	$(CC) $(CFLGAS) -o main *.o

clean:
	rm main *.o