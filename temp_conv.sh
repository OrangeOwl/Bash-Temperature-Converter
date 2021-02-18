#!/bin/bash

c_to_f () {
  echo "Input your temperature in Celsius"
  read celsius
  
  temp=$(bc <<< "scale=2;$celsius * 1.8 + 32")
  echo "$temp Degrees Fahrenheit"

}

f_to_c () {
  echo "Input your temperature in Fahrenheit"
  read fah
  
  temp=$(bc <<< "scale=2;($fah - 32) / 1.8")
  echo "$temp Degrees Celsius"

}

echo "Do you want to convert from Fahrenheit to Celsius, or Celsius to Fahrenheit?"
echo "A: Fahrenheit to Celsius"
echo "B: Celsius to Fahrenheit" 
echo "::Please type your selection below::"
read choice

if [ $choice == 'A' ] || [ $choice == 'a' ]
then
  f_to_c
fi

if [ $choice == 'B' ] || [ $choice == 'b' ]
then
  c_to_f
fi


