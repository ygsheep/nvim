#include <iostream>
#include <list>

using std::cout;
using std::endl;

class A{};



int main(){
  A a; // variable has incomplete type
  cout << "Hello " << endl;
}


