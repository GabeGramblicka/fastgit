#include <iostream>
#include <cstdlib>

int main(void) {
  std::cout << "git add ." << std::endl;
  system("git add .");

  std::string commitMessage;
  
  std::cout << "Commit Message: ";
  std::getline(std::cin, commitMessage);

  std::string finalString = "git commit -m \"" + commitMessage + "\"";
  system(finalString.c_str());

  std::cout << "Push? (Press Enter)";
  std::cin.get();
  system("git push");

  return 0;
}
