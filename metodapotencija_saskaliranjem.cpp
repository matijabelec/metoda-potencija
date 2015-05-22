#include <iostream>
#include <armadillo>
#include <iomanip>
using namespace std;
using namespace arma;

int main(int argc, char** argv) {
    int n, iter;
    double pom, z, x, g = 0, d = 0;
    bool directinput = (argc==2 && strcmp(argv[1], "--hide")==0) ? false : true;
    
    if(directinput) cout << "n: " << endl;
    cin >> n;
    
    mat A(n, n, fill::zeros);
    vec v(n, fill::zeros);
    
    if(directinput) cout << "matrica: " << endl;
    for(int i=0; i<n; i++)
        for(int j=0; j<n; j++) {
            cin >> pom;
            A(i, j) = pom;
        }
    
    if(directinput) cout << "vektor:" << endl;
    for(int i=0; i<n; i++) {
        cin >> pom;
        v(i) = pom;
    }
    
    if(directinput) cout << "br. iteracija: " << endl;
    cin >> iter;
    cout << std::setprecision(15);
    
    cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    cout << "metoda: metoda potencija sa skaliranjem" << endl;
    cout << "uneseni podaci: " << endl;
    cout << "matrica m=" << endl << A << endl;
    cout << "vektor v=(" << v(0); for(int i=1; i<n; i++) cout << ", " << v(i); cout << ")" << endl;
    cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    cout << endl;
    
    double l = 0.0;
    vec r = v;
    for(int i=0; i<iter; i++) {
        r = A * r;
        pom = 0.0;
        for(int k=0; k<n; k++) {
            x = r(k)<0 ? -1*r(k) : r(k);
            if(x > pom) pom = x;
        }
        z = 1.0 / pom;
        r = z * r;
        cout << endl;
        cout << "iteracija broj: " << i << endl;
        cout << "     v=(" << r(0); for(int i=1; i<n; i++) cout << ", " << r(i); cout << ")" << endl;
    }
    cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    cout << endl;
    
    mat B = A * r;
    for(int i=0; i<n; i++) {
        d += pow(r(i), 2.0);
        g += B(i, 0) * r(i);
    }
    cout << "lambda: " << g/d << endl;
    cout << "     v=(" << r(0); for(int i=1; i<n; i++) cout << ", " << r(i); cout << ")" << endl;
    cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    
    return 0;
}