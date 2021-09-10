#!/bin/bash

favstates=("South Carolina" "Georgia" "Florida" "Texas" "Hawaii")

for state in ${favstates[@]};
do 
  if [ $state = "Hawaii" ]
  then 
    echo "Hawaii is the best!"
  else 
    echo "I'm not fond of Hawaii."
  fi
done

for num in {0..9}
do 
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then 
    echo $num
  fi
done

filelist=$(ls)

for file in ${filelist[@]}
do 
  echo $file
done


files=$(find /home -type f -perm 777 2>/dev/null)

for file in ${files[@]}
do
  echo $file
done

