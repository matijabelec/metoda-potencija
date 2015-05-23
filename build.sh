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
cd zad4
mkdir csv
cd ..

mkdir zad5
cd zad5
mkdir csv
cd ..

mkdir zad6
cd zad6
mkdir csv
cd ..

mkdir zad8
cd zad8
mkdir csv
cd ..

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
echo "    generiranje rjesenja za zad4 (csv)..."
./mpbs --csvout < rjesenja/zad4/unos1.txt > rjesenja/zad4/csv/ispis1bs.txt
./mpbs --csvout < rjesenja/zad4/unos2.txt > rjesenja/zad4/csv/ispis2bs.txt
./mpbs --csvout < rjesenja/zad4/unos3.txt > rjesenja/zad4/csv/ispis3bs.txt
./mpbs --csvout < rjesenja/zad4/unos4.txt > rjesenja/zad4/csv/ispis4bs.txt
./mpss --csvout < rjesenja/zad4/unos1.txt > rjesenja/zad4/csv/ispis1ss.txt
./mpss --csvout < rjesenja/zad4/unos2.txt > rjesenja/zad4/csv/ispis2ss.txt
./mpss --csvout < rjesenja/zad4/unos3.txt > rjesenja/zad4/csv/ispis3ss.txt
./mpss --csvout < rjesenja/zad4/unos4.txt > rjesenja/zad4/csv/ispis4ss.txt

echo "  generiranje rjesenja za zad5..."
cp podaci/unos5.txt rjesenja/zad5/unos1.txt
cp podaci/unos6.txt rjesenja/zad5/unos2.txt
./mpbs --hide < rjesenja/zad5/unos1.txt > rjesenja/zad5/ispis1bs.txt
./mpbs --hide < rjesenja/zad5/unos2.txt > rjesenja/zad5/ispis2bs.txt
./mpss --hide < rjesenja/zad5/unos1.txt > rjesenja/zad5/ispis1ss.txt
./mpss --hide < rjesenja/zad5/unos2.txt > rjesenja/zad5/ispis2ss.txt
echo "    generiranje rjesenja za zad5 (csv)..."
./mpbs --csvout < rjesenja/zad5/unos1.txt > rjesenja/zad5/csv/ispis1bs.txt
./mpbs --csvout < rjesenja/zad5/unos2.txt > rjesenja/zad5/csv/ispis2bs.txt
./mpss --csvout < rjesenja/zad5/unos1.txt > rjesenja/zad5/csv/ispis1ss.txt
./mpss --csvout < rjesenja/zad5/unos2.txt > rjesenja/zad5/csv/ispis2ss.txt


echo "  generiranje rjesenja za zad6..."
cp podaci/unos7.txt rjesenja/zad6/unos1.txt
cp podaci/unos8.txt rjesenja/zad6/unos2.txt
./mpbs --hide < rjesenja/zad6/unos1.txt > rjesenja/zad6/ispis1bs.txt
./mpbs --hide < rjesenja/zad6/unos2.txt > rjesenja/zad6/ispis2bs.txt
./mpss --hide < rjesenja/zad6/unos1.txt > rjesenja/zad6/ispis1ss.txt
./mpss --hide < rjesenja/zad6/unos2.txt > rjesenja/zad6/ispis2ss.txt
echo "    generiranje rjesenja za zad6 (csv)..."
./mpbs --csvout < rjesenja/zad6/unos1.txt > rjesenja/zad6/csv/ispis1bs.csv
./mpbs --csvout < rjesenja/zad6/unos2.txt > rjesenja/zad6/csv/ispis2bs.csv
./mpss --csvout < rjesenja/zad6/unos1.txt > rjesenja/zad6/csv/ispis1ss.csv
./mpss --csvout < rjesenja/zad6/unos2.txt > rjesenja/zad6/csv/ispis2ss.csv

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
echo "    generiranje rjesenja za zad8 (csv)..."
./mpbs --csvout < rjesenja/zad8/unos1.txt > rjesenja/zad8/csv/ispis1bs.csv
./mpbs --csvout < rjesenja/zad8/unos2.txt > rjesenja/zad8/csv/ispis2bs.csv
./mpbs --csvout < rjesenja/zad8/unos3.txt > rjesenja/zad8/csv/ispis3bs.csv
./mpbs --csvout < rjesenja/zad8/unos4.txt > rjesenja/zad8/csv/ispis4bs.csv
./mpbs --csvout < rjesenja/zad8/unos5.txt > rjesenja/zad8/csv/ispis5bs.csv
./mpbs --csvout < rjesenja/zad8/unos6.txt > rjesenja/zad8/csv/ispis6bs.csv
./mpbs --csvout < rjesenja/zad8/unos7.txt > rjesenja/zad8/csv/ispis7bs.csv
./mpbs --csvout < rjesenja/zad8/unos8.txt > rjesenja/zad8/csv/ispis8bs.csv
./mpbs --csvout < rjesenja/zad8/unos9.txt > rjesenja/zad8/csv/ispis9bs.csv
./mpbs --csvout < rjesenja/zad8/unos10.txt > rjesenja/zad8/csv/ispis10bs.csv
./mpss --csvout < rjesenja/zad8/unos1.txt > rjesenja/zad8/csv/ispis1ss.csv
./mpss --csvout < rjesenja/zad8/unos2.txt > rjesenja/zad8/csv/ispis2ss.csv
./mpss --csvout < rjesenja/zad8/unos3.txt > rjesenja/zad8/csv/ispis3ss.csv
./mpss --csvout < rjesenja/zad8/unos4.txt > rjesenja/zad8/csv/ispis4ss.csv
./mpss --csvout < rjesenja/zad8/unos5.txt > rjesenja/zad8/csv/ispis5ss.csv
./mpss --csvout < rjesenja/zad8/unos6.txt > rjesenja/zad8/csv/ispis6ss.csv
./mpss --csvout < rjesenja/zad8/unos7.txt > rjesenja/zad8/csv/ispis7ss.csv
./mpss --csvout < rjesenja/zad8/unos8.txt > rjesenja/zad8/csv/ispis8ss.csv
./mpss --csvout < rjesenja/zad8/unos9.txt > rjesenja/zad8/csv/ispis9ss.csv
./mpss --csvout < rjesenja/zad8/unos10.txt > rjesenja/zad8/csv/ispis10ss.csv


echo "uspjesno zavrseno"
