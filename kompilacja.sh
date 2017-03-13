#!/bin/bash
#Zadanie z maila
#Kompilacja pliku example.cpp debug/release za pomocą g++

debug () {
	g++ -g -Wall -o testowy example.cpp
	echo "Wykonano kompilację debug"
}

release () {
	g++ -O2 -Wall -o testowy example.cpp
	echo "Wykonano kompilację release"
}

echo "Witaj"
echo "Program kompiluje plik example.cpp do pliku testowy"
echo "1) Debug"
echo "2) Release"
echo "3) Wyjście"
echo "Podaj rodzaj kompilacji:"

read x

if [ "$x" == "1" ] ; then
	debug

elif [ "$x" == "2" ] ; then
	release

elif [ "$x" == "3" ]; then
	echo "Do widzenia"
	exit

else echo "Nieznana kompilacja"
fi