#include <iostream>
#include <{{ cookiecutter.repo_name }}/lib.hpp>

int main() {
  std::cout << "7 + 4 = " << AddTwo::Add(7, 4) << std::endl;
  return 0;
}
