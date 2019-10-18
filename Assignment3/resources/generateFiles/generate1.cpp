#include <iostream>
#include <sstream>
#include <cstdio>
using namespace std;
int main() {
	freopen("../access.log", "r", stdin);
	freopen("../access2.log", "w", stdout);
	string line;
	while (getline(cin, line)) {
		istringstream iss(line);
		string ip;
		iss >> ip;
		while (ip.length() < 15) {
			ip += " ";
		}
		cout << ip << endl;
	}
	return 0;
}
