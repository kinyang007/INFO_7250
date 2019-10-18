#include <iostream>
#include <sstream>
#include <cstdio>
using namespace std;
int main() {
	freopen("../access.log", "r", stdin);
	freopen("../access1.log", "w", stdout);
	string line;
	while (getline(cin, line)) {
		istringstream iss(line);
		string ip;
		iss >> ip;
		cout << ip << "\t" << 1 << endl;
	}
	return 0;
}
