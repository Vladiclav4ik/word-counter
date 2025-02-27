#include <iostream>
#include "word_counter.h"

int main() {
    std::string input;
    std::cout << "Введите строку:\n";
    std::getline(std::cin, input);
    std::cout << "Количество слов: " << countWords(input) << std::endl;
    return 0;
}
