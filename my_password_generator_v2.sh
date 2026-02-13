#!/bin/bash

# ============================================
# Simple Password Generator
# ============================================

# Description:
# Generates strong random passwords using OpenSSL.
# Supports custom length and quantity of passwords.

echo "============================================"
echo "       Welcome to Simple Password Generator"
echo "============================================"

# Ask for password length
read -p "Enter the length of each password: " PASS_LENGTH

# Ask for number of passwords to generate
read -p "Enter the number of passwords to generate: " PASS_QUANTITY

echo
echo "Generating $PASS_QUANTITY password(s) of length $PASS_LENGTH..."
echo "--------------------------------------------"

# Generate passwords
for i in $(seq 1 $PASS_QUANTITY); do
    # Base64 is used for a robust character set: A-Z, a-z, 0-9, +, /
    PASSWORD=$(openssl rand -base64 48 | cut -c1-$PASS_LENGTH)
    echo "Password $i: $PASSWORD"
done

echo "--------------------------------------------"
echo "All passwords generated successfully!"

