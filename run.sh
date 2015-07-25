#!/bin/bash

make clean
echo "**************************** Making the files ****************************"
make

for ((  i = 1 ;  i <= 5;  i++  ))
do
  echo "************************* Testing test file $i ************************"
  echo ""
  ./a.out < test_inputs/ass6_12CS30006_test$i.c > test_outputs/ass6_12CS30006_$i.s
  gcc test_outputs/ass6_12CS30006_$i.s myl.c -o $i.out
  ./$i.out
  echo "Press Enter to continue"
  read newline
  echo ""
done

echo "**************************** Testing done ********************************"


