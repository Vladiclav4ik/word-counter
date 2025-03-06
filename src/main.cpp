#include <iostream>
#include "word_counter.h"

int main(int argc, char* argv[]) {
    if (argc > 1 && std::string(argv[1] == "--success") {
        std::cout << "Success docker launch, exiting with code 0." << std::endl; 
    }
    
    std::string input;
    std::cout << "Введите строку:\n";
    std::getline(std::cin, input);
    std::cout << "Количество слов: " << countWords(input) << std::endl;
    return 0;
}
