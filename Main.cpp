#include <iostream>
#include <cstdlib>

int main(void) {
  std::cout << "git add ." << std::endl;
  system("git add .");

  std::string commitMessage;
  
  std::cout << "Commit Message: ";
  std::getline(std::cin, commitMessage);

  std::string commitPrompt = "git commit -m \"";

  std::string finalString = commitPrompt + commitMessage + "\"";
  std::cout << std::endl;
  std::cout << finalString << std::endl;
  system(finalString.c_str());

  std::cout << "Push?";
  std::cin.get();
  system("git push");

  return 0;
}
