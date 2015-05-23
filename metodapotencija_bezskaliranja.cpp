#include <iostream>
#include <armadillo>
#include <iomanip>
using namespace std;
using namespace arma;

int main(int argc, char** argv) {
    int n, iter;
    double pom, z, x, g = 0, d = 0;
    bool directinput = (argc==2 && (strcmp(argv[1], "--hide")==0 || strcmp(argv[1], "--csvout")==0) ) ? false : true;
    bool nocsvoutput = (argc==2 && strcmp(argv[1], "--csvout")==0) ? false : true;
    
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
    
    if(nocsvoutput) {
        cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
        cout << "metoda: metoda potencija bez skaliranja" << endl;
        cout << "uneseni podaci: " << endl;
        cout << "matrica m=" << endl << A << endl;
        cout << "vektor v=(" << v(0); for(int i=1; i<n; i++) cout << ", " << v(i); cout << ")" << endl;
        cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
        cout << endl;
    }
    
    double l = 0.0;
    vec r = v;
    for(int i=0; i<iter; i++) {
        r = A * r;
        if(nocsvoutput) {
            cout << endl;
            cout << "iteracija broj: " << i << endl;
            cout << "     v=(" << r(0); for(int i=1; i<n; i++) cout << ", " << r(i); cout << ")" << endl;
        } else {
            cout << i+1 << ";";
            cout << r(0); for(int i=1; i<n; i++) cout << ", " << r(i); cout << endl;
        }
    }
    if(nocsvoutput) cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    if(nocsvoutput) cout << endl;
    
    mat B = A * r;
    for(int i=0; i<n; i++) {
        d += pow(r(i), 2.0);
        g += B(i, 0) * r(i);
    }
    if(nocsvoutput) {
        cout << "lambda: " << g/d << endl;
        cout << "     v=(" << r(0); for(int i=1; i<n; i++) cout << ", " << r(i); cout << ")" << endl;
        cout << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
    } else {
        cout << "lambda;" << g/d << endl;
    }
    return 0;
}
