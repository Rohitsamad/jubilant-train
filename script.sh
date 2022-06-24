#! /bin/bash
rm -r /hot
mkdir ./hot
for i in $(find . -type d);
do
if [ "$i" != "./hot" ]; then
  echo "*************** $i ***************"
  for myfile in $i/* ;
  do
    if [ -f "$myfile" ]; then
      echo "The file inside is: $myfile"
      check=$(grep -ni "do" "$myfile")
      if [ -z "$check" ]; then
        echo "EMPTY"
      else
        echo "FOUND"
        name=$(basename $myfile)
        cp "$myfile" ./hot/"$name"
        echo " " >> hot/"$name"
        echo "*********" >> hot/"$name"
        echo "$check" >> hot/"$name"
      fi
    fi
  done
  echo "______________________________"
  echo " "
fi
done
