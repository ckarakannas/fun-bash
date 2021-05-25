# fun-bash
A collection of fun shell scripts to play with &amp; boost your bash scripting knowledge. These should work on most modern UNIX/Linux distros and macOS systems.

# Getting started

Clone the repo into your local file system using:

```bash
git clone https://github.com/ckarakannas/fun-bash.git
```

For any scripts that you wish to run, you may need to modify permissions to execute using `chmod`. As an example, in your terminal run:

```bash
chmod 755 <FILE_PATH>
```

# Scripts

## email_validator.sh

Usage: A simple script to check the validity of a common email address (99% success rate). It does **NOT** check if the email actually exists; it only checks if the input is of valid email format.

### Arguments
1. An email address

Note: This argument is mandatory

### Examples

```bash
bash ./email_validator.sh johndoe@test.com
# Output: Email johndoe@test.com is valid!
bash ./email_validator.sh not-a-valid-email.test.com
# Output: Invalid email: not-a-valid-email.test.com - Try again
```

## date_validator.sh

Usage: A simple script to check the validity of a date that is in the format 'DD-MM-YYYY' or 'DD/MM/YYYY'. A WARNING message is shown if the date provided is in the future.

### Arguments
1. A date parameter that must be in the format 'DD-MM-YYYY' or 'DD/MM/YYYY'

Note: This argument is mandatory

### Examples

```bash
bash ./date_validator.sh 18-02-2021
# Output: 
# year=2021, month=02, day=18
# Date 18-02-2021 is valid.

bash ./date_validator.sh 17/02/2021
# Output:
# year=2021, month=02, day=17
# Date 17/02/2021 is valid.

bash ./date_validator.sh 29/02/2021
# Output:
# year=2021, month=02, day=29
# Date 29/02/2021 OR date format is not valid!

bash ./date_validator.sh 01/13/2021
# Output:
# year=2021, month=13, day=01
# Date 01/13/2021 OR date format is not valid!
```
