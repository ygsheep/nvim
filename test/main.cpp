#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;

void operator""_p(const char *str, ssize_t size) {

	cout << str << " size: " << size;
}

int main() {

	"aaa"_p;
	return 0;
}
