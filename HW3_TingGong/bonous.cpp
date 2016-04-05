#include <iostream>
#include <Math.h>
#include <stdio.h>
#include <fstream>
using namespace std;

# define M_PI           3.14159265358979323846  /* pi */
int main(){
	long double R = 5, r = 1, a = 4;
	long double offsetx, offsety;//offset to adjust points locations
	offsetx = -118.28900534659624;//SGM124 longitude and altitude
	offsety = 34.02116174797029; 
	ofstream myfile;
	myfile.open("points.txt");//results file of points
	
	for (long double t = 0; t < (M_PI * 10); t += 0.01) {
		long double x = (R + r)*cos((r / R)*t) - a*cos((1 + r / R)*t);
		long double y = (R + r)*sin((r / R)*t) - a*sin((1 + r / R)*t);
		
		cout.precision(20);
		std::cout << x*0.01 + offsetx << "," << y*0.01 + offsety;//print out to check
		std::cout << "\n";

		myfile.precision(20);//precise after 20 number of decimal
		myfile << x*0.01 + offsetx << "," << y*0.01 + offsety;//scale points to adjust size of sprio
		myfile << "\n";
	}
	
	myfile.close();
	
	system("PAUSE");
	return 0;
}