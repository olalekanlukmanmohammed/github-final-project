#!/bin/bash

# simple-interest.sh
# A simple Bash script to calculate simple interest and total amount.

echo "=========================================="
echo "        Simple Interest Calculator        "
echo "=========================================="

# Prompt user for input values
read -p "Enter Principal Amount (P): " principal
read -p "Enter Annual Interest Rate (%): " rate
read -p "Enter Time Period in Years (T): " time

# Validate that inputs are not empty
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All input fields (Principal, Rate, Time) are required."
    exit 1
fi

# Calculate Simple Interest: I = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount: A = P + I
total=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------------"
echo "Results:"
echo "Principal Amount:  $principal"
echo "Annual Rate (%):   $rate%"
echo "Time (Years):      $time"
echo "Simple Interest:   $interest"
echo "Total Amount:      $total"
echo "=========================================="
