#!/usr/bin/env bash
# simple-interest.sh: Calculate simple interest = (P * R * T) / 100
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time_in_years>"
  exit 1
fi

principal="$1"
rate="$2"
time="$3"

# Calculate interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
