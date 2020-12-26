#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

isAbsent=0
isPartTime=1
isFullTime=2
empWagePrHr=20
randomCheck=$(( RANDOM % 3 ))
if [ $randomCheck -eq $isAbsent ]
then
        empHrs=0
elif [ $randomCheck -eq $isPartTime ]
then
        empHrs=4
else
        empHrs=8
fi
salary=$(( empWagePrHr * empHrs ))

