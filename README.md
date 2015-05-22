# metoda-potencija
Algoritmi za metodu potencija (OPM)

## kompajliranje

g++ metodapotencija_bezskaliranja.cpp -o mpbs -O2 -larmadillo
g++ metodapotencija_saskaliranjem.cpp -o mpss -O2 -larmadillo

## koristenje
./mpXX --hide < unosX.txt
./mpXX

## struktura "unos" datoteka
$N
$matrica<NxN>
$vektor<N>
$br_iteracija

## build.sh
- generira rjesenja na temelju podataka (matrice) u direktoriju "podaci"
- rjesenja se nalaze u direktoriju "rjesenja"
