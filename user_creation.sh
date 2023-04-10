#!/bin/bash

# Loop through 10 times to create 10 users
for i in {1..10}
do
    # Create the user with the specified password
    useradd -m -p $(echo '12345' | openssl passwd -1 -stdin) nassrine$i

    # Set the user's account to expire on 30th March 2022
    chage -E 2022-03-30 nassrine$i

    # Force the user to change their password at first login
    chage -d 0 nassrine$i

    # Display the username and password for the user
    echo "Username: nassrine$i"
    echo "Password: 12345"
done
