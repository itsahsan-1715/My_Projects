#include <iostream>
using namespace std;

// Extra test function
void sayHello() {
    cout << "Hello from Git test function!" << endl;
}

int main() {
    cout << "Original main function" << endl;
    
    // Call the test function
    sayHello();
    
    return 0;
}
