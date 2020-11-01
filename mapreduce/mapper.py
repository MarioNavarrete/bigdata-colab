#!/usr/bin/env python
import sys
for line in sys.stdin:
    line = line.strip()
    columns = line.split(',')
    #try:
    date = columns[0].strip().split()[0]
    value = columns[1].strip()
    try:
        float(value)
        print('%s\t%s' % (date, value))
    except:
        pass
