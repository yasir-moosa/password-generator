# Simple Password Generator

A lightweight Bash script to generate strong random passwords using OpenSSL.

## Features
- Generate multiple passwords at once.
- Customizable password length.
- Uses Base64 encoding for a robust character set (`A-Z`, `a-z`, `0-9`, `+`, `/`).
- Simple and easy-to-use terminal interface.

## Why Base64?
Using Base64 ensures a wide character set, making passwords harder to brute-force.  
Using hexadecimal (`openssl rand -hex`) would generate passwords containing only lowercase letters and numbers, which are weaker and easier to crack.

```bash
# Example of weaker alternative
openssl rand -hex 48 | cut -c1-12

