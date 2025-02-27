CC=g++
CFLAGS=-Wall -Wextra -std=c++17
TARGET=word_counter
TEST_SRC=cicd/test_word_counter.cpp
TESTER_SRC=cicd/tester_word_counter.cpp
MAIN_SRC=src/main.cpp
WORD_COUNTER_SRC=src/word_counter.cpp
INCLUDES=-Isrc

all: $(TARGET)

$(TARGET): $(MAIN_SRC) $(WORD_COUNTER_SRC)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(TARGET) $(MAIN_SRC) $(WORD_COUNTER_SRC)
	mkdir -p usr/bin
	cp $(TARGET) usr/bin

test: $(TEST_SRC) $(WORD_COUNTER_SRC)
	$(CC) $(CFLAGS) $(INCLUDES) -o test_runner $(TEST_SRC) $(WORD_COUNTER_SRC) -lgtest -lgtest_main -pthread
	./test_runner
	
tester: $(TESTER_SRC) $(WORD_COUNTER_SRC)
	$(CC) $(CFLAGS) $(INCLUDES) -o tester_runner $(TESTER_SRC) $(WORD_COUNTER_SRC) -lgtest -lgtest_main -pthread
	./tester_runner

clean:
	rm -f $(TARGET) test_runner
