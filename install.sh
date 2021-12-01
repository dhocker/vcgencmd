#!/bin/bash

echo 
echo Available versions for installation
echo 

# Show list of available packages
x=-1
for i in dist/*.whl; do
  x=$(($x + 1))
  echo $x - $i
  whls[$x]=$i
done

# Ask for package to be installed
while true;
do
    echo
    read -p "Select version to install (0-${x}): " sel
    if [[ $sel -ge 0 ]] &&  [[ $sel -le $x ]];
    then
        echo Selection: ${whls[$sel]}
        echo "Installing: ${whls[$sel]}"
        pip install $whls[$sel]
        break
    else
        echo "Invalid selection"
    fi
done
