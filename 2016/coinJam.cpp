#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

int stringToInt(char *s){
    int result = 0, length = 0;
	char *p = s;
	while(*p != '\0'){
		length++;
		p++;
	}
    for(int i = 0; *(s+i) != '\0'; i++){
        result += (s[i] - '0') * pow(10, length - i - 1);
    }
    return result;
}

void intToString(int n, char *s){
	int k;
	while(n){
		*s = (n % 10) + '0';
		s++;
		n = n / 10;
	}
	*s = '\0';
}

bool isPrime(int num){
	for(int i = 2; i <= sqrt(num); i++){
		if(num % i == 0)
			return false;
	}
	return true;
}

int toBaseTen(int num, int base){
	char *p = new char[33], *q = p;
	int res = 0;
	intToString(num , p);
	while(*(q + 1) != '\0')
		q++;
	for(int i = 0; q != p - 1; q--, i++){
		res += pow(base, i) * ((*q) - '0');
	}
	delete p;
	return res;
}

void palin(char *source, char *des){
	char *p = source;
	while(*(p + 1) != '\0')
		p++;
	while(p != source - 1){
		*des = *p;
		des++;
		p--;
	}
	*des = '\0';
}

int toBase(int num, int base){
	char *source = new char[33], *p = source;
	char *res = new char[33];
	int remainder;
	while(num){
		*p = num % base + '0';
		p++;
		num = num / base;
	}
	*p = '\0';
	palin(source, res);
	return stringToInt(res);
}

int main(int argc, char **argv){
	ifstream fileInput;
	ofstream fileOutput;
	fileInput.open(argv[1]);
	fileOutput.open(argv[2]);
	int T;
	fileInput >> T;

	int N, J;
	for(int i = 0; i < T; i++){
		fileInput >> N >> J;
	}

	fileInput.close();
	fileOutput.close();
}
