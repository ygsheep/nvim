#include <iostream>
#include <vector>

using std::cout;
using std::endl;

void test(){
	cout<< "test" << endl;
};



int main() {
	
	cout << "hello Word!\n";
	int sum = 0;
	for (int _ = 0 ; _ <= 100 ; _++) {
		sum += _;
	}
	cout << sum ;

	return 0;
}

