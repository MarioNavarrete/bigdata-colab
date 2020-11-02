#!/usr/bin/python

##input es (date, humedadsuelo)
import sys 

current_date = None
val_max = -float('inf')
val_min = float('inf')
count = 0
total = 0

for line in sys.stdin:
    line = line.strip()
    date,val = line.split('\t')
    
    date = date.strip()
    val = float(val.strip())
    
    if current_date == date:
        ##Max Value
        if val >= val_max:
            val_max = val
        else:
            pass
        ##Min Value
        if val <= val_min:
            val_min = val
        else:
            pass
        ##Avg variables
        count+= 1
        total+= val
    else: 
        if current_date:
            avg = total*1.0/count
            print('%s\t%s' % (current_date, val_max, val_min, avg))
        count = 0
        total = 0
        val_min = val
        val_max = val
        current_date = date

if current_date == date:
    avg = total*1.0/count
    print('%s\t%s' % (current_date, val_max, val_min, avg))