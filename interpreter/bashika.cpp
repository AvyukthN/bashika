#include <iostream>
#include <fstream>
#include <vector>
// using namespace std;

bool had_error = false;

// & means the input variable filename is a reference to an std::string 
// pass by reference avoids copying the string and is more efficient
std::string processFile(const std::string &filename){
    // std::ifstream is the input file stream class
    // we instantiate it below
    // std::ios::binary opens the file in binary mode
    // std::ios::ate moves file pointer to the end of the file
    // the | (OR operator) is used to combine both std::ios::binary and std::ios::ate
    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    if (!file.is_open()){
        throw std::runtime_error("BASHIKA ERROR | Unable to open file");
    }

    // file.tellg() returns the position of the file pointer
    // this gives us the size because we positioned the file pointer at the end
    // when we used std::ios::ate previously in our ifstream instantiation
    std::streamsize size = file.tellg();
    // we now reposition the file pointer to the beginning of the file
    // seekg() moves the get pointer
    // 0 is the offset which means no offset
    // std::ios::beg moves the pointer relative to the beginning of the file
    // so basically we are moving to the beginning of the file with 0 offset
    file.seekg(0, std::ios::beg);

    // creates a vector to hold the contents of the file we read in
    // does this by allocating a buffer with the size of the file we determined previously
    std::vector<char> buffer(size);

    // a little more error handling for the file reading
    // file.read() reads from the file
    // the .data() returns a pointer to the underlying array in the char vector we defined previously
    if (!file.read(buffer.data(), size)){
        throw std::runtime_error("BASHIKA ERROR | Unable to read file");
    }

    std::string buffer_string(buffer.begin(), buffer.end());

    return buffer_string;
}

void run(const std::string &source);

void runFile(const std::string &file_path){
    run(processFile(file_path));
}

void runPrompt(){
    std::string line;

    while (true){
        std::cout << "bashika> ";
        if (!std::getline(std::cin, line)){
            break;
        }
        run(line);
        had_error = false;
    }
}

void run(const std::string &source){
    // std::cout << source << "\n";
    Scanner scanner(source);
    std::vector<Token> tokens = scanner.scanTokens();

    for (const Token &token : tokens){
        // we add an "\n" character here because it is more efficient
        // we could use std::endl which1G adds the "\n" character and flushes the output buffer
        // or std::flush which simply flushes the output buffer
        // however that is an expensive operation and using "\n" is much more efficient
        // probably only really need to use std::endl or std::flush if code takes long to run and we want to debug before program finishes running
        // (that way we don't have to wait a long time for the program to finish or print out stuff later than where the print statement is in the program)
        std::cout << token << "\n";
    }

}

void report(int line_number, std::string where, std::string error_message){
    cout << "[Line " << line_number << "] Error " << where << ": " << error_message << "\n";
    had_error = true;
}

void error(int line_number, std::string error_message){
    report(line_number, "", error_message);
}

int main(int argc, char* argv[]){
    if (argc > 2){
        std::cout << "Usage: bashika [script]";
        return 0;
    }
    else if (argc == 2){
        runFile(argv[1]);
    }
    else {
        runPrompt();
    }

    if (had_error){
        // could use return 65 here but std::exit(65) can be used anywhere in the code
        // however std::exit(65) does not allow for stack unwinding and destructors are not called for local objects
        // and it also doesn't guarantee destruction of static objects
        // basically std::exit(65) terminates the program regardless of where we are in the call stack
        std::exit(65);
    }

    return 0;
}
