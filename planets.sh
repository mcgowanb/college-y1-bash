#!/bin/bash

planets=(Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto)

for p in ${planets[*]}
do
	echo This planet is $p
done