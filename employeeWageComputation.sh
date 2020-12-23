#! /bin/bash -x

echo "Welcome to Employee Wage Computation"
num0=0
randomCheck=$(( RANDOM % 2 ))
if [ $randomCheck -eq $num0 ]
then
        echo "Employee is absent"
else
        echo "Employee is present"
fi
