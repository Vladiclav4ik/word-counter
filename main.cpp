#include <iostream>
#include <sstream>
#include <string>

// Функция для подсчёта слов
size_t countWords(const std::string& str) {
    std::istringstream stream(str);
    std::string word;
    size_t wordCount = 0;
    while (stream >> word) {
        ++wordCount;
    }
    return wordCount;
}

int main() {
    std::string input;
    std::cout << "Введите строку:\n";
    std::getline(std::cin, input);
    std::cout << "Количество слов: " << countWords(input) << std::endl;
    return 0;
}
