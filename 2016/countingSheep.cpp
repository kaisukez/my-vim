#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

//int stringToInt(string s){
    //int length = s.size(), result = 0;
    //for(int i = 0; i < length; i++){
        //result += (s[i] - '0') * pow(10, length - i - 1);
    //}
    //return result;
//}

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

void listInit(bool *list, int length){
	for(int i = 0; i < length; i++){
		list[i] = false;
	}
}

bool isAllTrue(bool *list, int length){
	bool res = true;
	for(int i = 0; i < length; i++){
		if(!list[i]){
			res = false;
			break;
		}
	}
	return res;
}

void printResult(int *output, int length){
	for(int i = 0; i < length; i++){
		cout << "Case #" << i + 1 << ": ";
		if(output[i] == 0){
			cout << "INSOMNIA";
		}
		else
			cout << output[i];
		cout << endl;
	}
}

void writeResult(int *output, int length, ofstream &out){
	for(int i = 0; i < length; i++){
		out << "Case #" << i + 1 << ": ";
		if(output[i] == 0){
			out << "INSOMNIA";
		}
		else
			out << output[i];
		out << endl;
	}
}

int main(int argc, char **argv){
	ifstream file;
	ofstream file2;
	file.open(argv[1]);
	file2.open(argv[2]);
	int T, inputI, inputTmp, mul;
	char *inputC = new char[1000001], *p;
	bool list[10];
	file >> T;
	int output[T];
		
	for(int i = 0; i < T; i++){
		file >> inputI;
		if(!inputI){
			output[i] = 0;
			continue;
		}
		listInit(list, sizeof(list)/sizeof(bool));
		mul = 1;
		while(!isAllTrue(list, sizeof(list)/sizeof(bool))){
			inputTmp = mul * inputI;
			intToString(inputTmp, inputC);
			p = inputC;
			while(*p != '\0'){
				list[*p - '0'] = true;
				p++;
			}
			mul++;
		}
		output[i] = inputTmp;
	}
	printResult(output, sizeof(output)/sizeof(int));
	writeResult(output, sizeof(output)/sizeof(int), file2);
	file.close();
}
