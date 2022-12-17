#include <iostream>
#include <Windows.h>
using namespace std;


extern "C" int selamcanim(LPTHREAD_START_ROUTINE a ,PVOID b);


void message(LPVOID mrb) {
	while (1)

		printf("%s\n", *(PCHAR*)mrb);
		//cout << mrb << endl;
		cout << "I'm in MESSAGE!!\n";
}

void message2() {
	while (1)
		std::cout << "I'm message2\n";
}

int main()
{
	//PVOID adres = LoadLibrary(L"Kernel32.dll");	
	//selamcanim((LPTHREAD_START_ROUTINE)message2,adres);
	//typedef double (*LPGETNUMBER)(double Nbr);
	//typedef double(*LPGETNUMBER);
	//LPGETNUMBER lpGetNumber;
	int* lpGetNumber;

	lpGetNumber = (int*)GetProcAddress(LoadLibrary(L"Kernel32.dll"), "CreateThread");
	std::cout << lpGetNumber <<"\n";
	std::cout << typeid(lpGetNumber).name() << "\n";

	selamcanim((LPTHREAD_START_ROUTINE)message2, lpGetNumber);



	//selamcanim((LPTHREAD_START_ROUTINE)message2,adres);

	//int k;
	//cin >> k;
	//LPVOID mrb ;
	//string asd = "naber";
	//mrb = &asd;
	//cout << mrb;
	//cin >> asd;
	//message(mrb);
	//CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)message, &mrb, 0, NULL);
	//CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)message2, NULL, 0, NULL);
	//free(mrb);
	while (1)
		std::cout << "I'm in MAIN...\n";
}
