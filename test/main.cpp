#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;

void operator""_p(const char *str, size_t size) {
	cout << str << " size: " << size;
}

int main() {

"aaa"_p;
	cout << "aaa" << endl;
	return 0;
}


