#!/bin/bash
# Line added on 3/7 
HOSTFILE=servers3.txt
while read HOST
do
   ping -c 1 $HOST > /dev/null
   if [ $? -eq 0 ]; then 
       if [ "$HOST" ]
       then
           echo -n "$HOST   "
           ssh $HOST "uname -r" < /dev/null
       fi
   else
       echo "Ping Failed on $HOST"
   fi
done <$HOSTFILE
