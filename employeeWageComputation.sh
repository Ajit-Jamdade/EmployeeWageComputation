#! /bin/bash -x

echo "Welcome to Employee Wage Computation"
isAbsent=0
empWagePrHr=20
empHrs=8
randomCheck=$(( RANDOM % 2 ))
if [ $randomCheck -eq $isAbsent ]
then
   echo "Employee is absent"
        echo "Daily salary is zero."
else
   echo "Employee is present"
        salary=$(( empWagePrHr * empHrs ))
   echo "Daily salary is "$salary
fi
