#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;

void operator""_p(const char *str, size_t size) {
	cout << str << " size: " << size;
}

auto add(int a, int b) -> int { return a + b; };

int main(void) {

	"aaa"_p;
	cout << "aaa" << endl;

	auto a = add(1, 1);
	return 0;
}


