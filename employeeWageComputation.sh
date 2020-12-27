#! /bin/bash -x

echo "Welcome to Employee Wage Computation"
#echo ""

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

# VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage
function getWorkingHours(){
        local empCheck=$1
	case "$empCheck" in
		"$isFullTime")
                	empHrs=8
                        ;;
                "$isPartTime")
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
	getEmpHrs=$empHrs
#	echo "On day "$totalWorkingDays", employee worked "$getEmpHrs" hours."
}

function getDailyWage(){
        local empCheck=$1
        wage=$(( empCheck * empRatePerHr ))
#	echo "Day "$totalWorkingDays" salary is "$wage"."
	elements=$wage
#	echo ""
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
	randCheck=$((RANDOM%3))
        getWorkingHours $randCheck
        totalEmpHr=$(( totalEmpHr + getEmpHrs ));
	getDailyWage $getEmpHrs
	dailyWage["Day"$totalWorkingDays]=$elements
done

totalSalary=$(( totalEmpHr * empRatePerHr ));
echo "Daily Wage "${dailyWage[@]}
echo "Keys are "${!dailyWage[@]}
#echo "On month completion, employee worked for "$totalWorkingDays" days, contributing "$totalEmpHr" hours."
#echo "Earned monthly salary is "$totalSalary"."
