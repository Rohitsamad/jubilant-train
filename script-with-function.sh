#! /bin/bash
rm -r /hot
mkdir ./hot
for i in $(find . -type d);
do
if [ "$i" != "./hot" ]; then
  echo "******** This folder is $i *********"
  for myfile in $i/*;
  do
    if [ -f "$myfile" ]; then
      get_file "do" "$myfile"
    fi
  done
fi
  echo "------------------"
done
