
#! /bin/bash 

sudo awk -v n=2 -v s='auth sufficient pam_tid.so' 'NR == n {print s} {print}' /etc/pam.d/sudo > temp && mv temp /etc/pam.d/sudo

