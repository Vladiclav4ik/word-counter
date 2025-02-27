#include "word_counter.h"
#include <sstream>

size_t countWords(const std::string& str) {
    std::istringstream stream(str);
    std::string word;
    size_t wordCount = 0;
    while (stream >> word) {
        ++wordCount;
    }
    return wordCount;
}
