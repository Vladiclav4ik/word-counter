CC=g++
CFLAGS=-Wall -Wextra -std=c++17
TARGET=word_counter

all: $(TARGET)

$(TARGET): src/main.cpp
	$(CC) $(CFLAGS) -o $(TARGET) src/main.cpp
	mkdir -p $(dir $(PWD))usr/bin
	cp $(TARGET) $(dir $(PWD))usr/bin

clean:
	rm -f $(TARGET)
