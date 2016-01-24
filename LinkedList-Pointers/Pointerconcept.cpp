#include <iostream>

using namespace std;

int main() {
   int a = 100;
   int *b;
   b = &a;
   *b = 1000;
   cout<<"a is equal to:"<<a;
}