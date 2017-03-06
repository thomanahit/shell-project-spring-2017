#include "shell.h"

std::vector <std::string> preasing (std::string input_line){
  std::stringstream ss (input_line) ;
  std::vector<std::string> return_value ;
  for ( std::string word; ss>>word;) {
  return_value.push_back(word);
  }
  for (int i = 0; i < return_value.size(); i++) {
    std::cout << return_value[i] << std::endl;
  }
  return return_value;
}

void get_comand(void) {
  std::string input_line;
  std::vector <std::string> praserd_commands;
  getline (std::cin, input_line) ;
  praserd_commands = preasing(input_line);
}
