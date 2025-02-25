CC=g++
CFLAGS=-Wall -Wextra -std=c++17
TARGET=word_counter

all: $(TARGET)

$(TARGET): main.cpp
	$(CC) $(CFLAGS) -o $(TARGET) main.cpp

install:
	mkdir -p $(DESTDIR)/usr/local/bin
	cp $(TARGET) $(DESTDIR)/usr/local/bin/

clean:
	rm -f $(TARGET)
