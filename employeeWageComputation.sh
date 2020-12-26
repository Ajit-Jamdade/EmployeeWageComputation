#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

# CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
        local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
                	empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
echo $empHrs
}

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empHrs="$( getWorkingHours $((RANDOM%3)))";
        totalEmpHr=$(( $totalEmpHr + $empHrs ));
done

totalSalary=$(( $totalEmpHr * $EMP_RATE_PER_HR ));
