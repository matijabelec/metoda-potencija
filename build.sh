#!/bin/bash
echo "kompajliranje..."

echo "  bez skaliranja..."
g++ metodapotencija_bezskaliranja.cpp -o mpbs -O2 -larmadillo

echo "  sa skaliranjem..."
g++ metodapotencija_saskaliranjem.cpp -o mpss -O2 -larmadillo

echo ""
echo "priprema direktorija sa rjesenjima..."
mkdir rjesenja
cd rjesenja
mkdir zad4
mkdir zad5
mkdir zad6
mkdir zad8
cd ..

echo "generiranje rjesenja..."
echo "  generiranje rjesenja za zad4..."
cp podaci/unos1.txt rjesenja/zad4/unos1.txt
cp podaci/unos2.txt rjesenja/zad4/unos2.txt
cp podaci/unos3.txt rjesenja/zad4/unos3.txt
cp podaci/unos4.txt rjesenja/zad4/unos4.txt
./mpbs --hide < rjesenja/zad4/unos1.txt > rjesenja/zad4/ispis1bs.txt
./mpbs --hide < rjesenja/zad4/unos2.txt > rjesenja/zad4/ispis2bs.txt
./mpbs --hide < rjesenja/zad4/unos3.txt > rjesenja/zad4/ispis3bs.txt
./mpbs --hide < rjesenja/zad4/unos4.txt > rjesenja/zad4/ispis4bs.txt
./mpss --hide < rjesenja/zad4/unos1.txt > rjesenja/zad4/ispis1ss.txt
./mpss --hide < rjesenja/zad4/unos2.txt > rjesenja/zad4/ispis2ss.txt
./mpss --hide < rjesenja/zad4/unos3.txt > rjesenja/zad4/ispis3ss.txt
./mpss --hide < rjesenja/zad4/unos4.txt > rjesenja/zad4/ispis4ss.txt

echo "  generiranje rjesenja za zad5..."
cp podaci/unos5.txt rjesenja/zad5/unos1.txt
cp podaci/unos6.txt rjesenja/zad5/unos2.txt
./mpbs --hide < rjesenja/zad5/unos1.txt > rjesenja/zad5/ispis1bs.txt
./mpbs --hide < rjesenja/zad5/unos2.txt > rjesenja/zad5/ispis2bs.txt
./mpss --hide < rjesenja/zad5/unos1.txt > rjesenja/zad5/ispis1ss.txt
./mpss --hide < rjesenja/zad5/unos2.txt > rjesenja/zad5/ispis2ss.txt

echo "  generiranje rjesenja za zad6..."
cp podaci/unos7.txt rjesenja/zad6/unos1.txt
cp podaci/unos8.txt rjesenja/zad6/unos2.txt
./mpbs --hide < rjesenja/zad6/unos1.txt > rjesenja/zad6/ispis1bs.txt
./mpbs --hide < rjesenja/zad6/unos2.txt > rjesenja/zad6/ispis2bs.txt
./mpss --hide < rjesenja/zad6/unos1.txt > rjesenja/zad6/ispis1ss.txt
./mpss --hide < rjesenja/zad6/unos2.txt > rjesenja/zad6/ispis2ss.txt

echo "  generiranje rjesenja za zad8..."
cp podaci/unos9.txt rjesenja/zad8/unos1.txt
cp podaci/unos10.txt rjesenja/zad8/unos2.txt
cp podaci/unos11.txt rjesenja/zad8/unos3.txt
cp podaci/unos12.txt rjesenja/zad8/unos4.txt
cp podaci/unos13.txt rjesenja/zad8/unos5.txt
cp podaci/unos14.txt rjesenja/zad8/unos6.txt
cp podaci/unos15.txt rjesenja/zad8/unos7.txt
cp podaci/unos16.txt rjesenja/zad8/unos8.txt
cp podaci/unos17.txt rjesenja/zad8/unos9.txt
cp podaci/unos18.txt rjesenja/zad8/unos10.txt
./mpbs --hide < rjesenja/zad8/unos1.txt > rjesenja/zad8/ispis1bs.txt
./mpbs --hide < rjesenja/zad8/unos2.txt > rjesenja/zad8/ispis2bs.txt
./mpbs --hide < rjesenja/zad8/unos3.txt > rjesenja/zad8/ispis3bs.txt
./mpbs --hide < rjesenja/zad8/unos4.txt > rjesenja/zad8/ispis4bs.txt
./mpbs --hide < rjesenja/zad8/unos5.txt > rjesenja/zad8/ispis5bs.txt
./mpbs --hide < rjesenja/zad8/unos6.txt > rjesenja/zad8/ispis6bs.txt
./mpbs --hide < rjesenja/zad8/unos7.txt > rjesenja/zad8/ispis7bs.txt
./mpbs --hide < rjesenja/zad8/unos8.txt > rjesenja/zad8/ispis8bs.txt
./mpbs --hide < rjesenja/zad8/unos9.txt > rjesenja/zad8/ispis9bs.txt
./mpbs --hide < rjesenja/zad8/unos10.txt > rjesenja/zad8/ispis10bs.txt
./mpss --hide < rjesenja/zad8/unos1.txt > rjesenja/zad8/ispis1ss.txt
./mpss --hide < rjesenja/zad8/unos2.txt > rjesenja/zad8/ispis2ss.txt
./mpss --hide < rjesenja/zad8/unos3.txt > rjesenja/zad8/ispis3ss.txt
./mpss --hide < rjesenja/zad8/unos4.txt > rjesenja/zad8/ispis4ss.txt
./mpss --hide < rjesenja/zad8/unos5.txt > rjesenja/zad8/ispis5ss.txt
./mpss --hide < rjesenja/zad8/unos6.txt > rjesenja/zad8/ispis6ss.txt
./mpss --hide < rjesenja/zad8/unos7.txt > rjesenja/zad8/ispis7ss.txt
./mpss --hide < rjesenja/zad8/unos8.txt > rjesenja/zad8/ispis8ss.txt
./mpss --hide < rjesenja/zad8/unos9.txt > rjesenja/zad8/ispis9ss.txt
./mpss --hide < rjesenja/zad8/unos10.txt > rjesenja/zad8/ispis10ss.txt


echo "uspjesno zavrseno"
