#include <iostream>
#include <fstream>
using namespace std;

void writeResult(int *output, int length, ofstream& fileOutput){
	for(int i = 0; i < length; i++){
		fileOutput << "Case #" << i + 1 << ": " << output[i] << endl;
	}
}

int main(int argc, char **argv){
	ifstream fileInput;
	ofstream fileOutput;
	fileInput.open(argv[1]);
	fileOutput.open(argv[2]);

	int T;
	char *S = new char[101], *p;
	fileInput >> T;
	int output[T];

	for(int i = 0; i < T; i++){
		fileInput >> S;
		p = S;
		output[i] = 0;
		while(*p != '\0'){
			if(*(p + 1) != '\0'){
				if(*p != *(p + 1)){
					output[i]++;
				}
			} else{
				if(*p == '-')
					output[i]++;
			}
			p++;
		}
	}
	writeResult(output, sizeof(output)/sizeof(int), fileOutput);
	fileInput.close();
	fileOutput.close();
	delete S;
}
