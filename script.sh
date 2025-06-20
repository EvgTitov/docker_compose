#!/bin/bash

IP="127.0.0.1"
PORT="80"
LOG_FILE="$HOME/logport.txt"

nc -z $IP $PORT

if [ $? -eq 0 ] ; then
    echo "Yes"
else
    DATE=$(date)     
    echo "Дата: $DATE" >> $LOG_FILE
    echo "Порт: $PORT на IP $IP недоступен :(" >> "$LOG_FILE"
fi

exit 0    
