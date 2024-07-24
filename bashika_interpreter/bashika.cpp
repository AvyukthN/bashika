#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

// & means the input variable filename is a reference to an std::string 
// pass by reference avoids copying the string and is more efficient
std::vector<char> processFile(const std::string &filename){
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

    return buffer;
}

void runFile(cont std::string &file_path){
    run(processFile(file_path));
}
void runPrompt(){
    cout << "running prompt";
}

int main(int argc, char* argv[]){
    if (argc > 2){
        cout << "Usage: bashika [script]";
        return 0;
    }
    else if (argc == 2){
        runFile(argv[1]);
    }
    else {
        runPrompt();
    }

    return 0;
}
