#!/usr/bin/env python
import sys
from Bio import Medline

year_count={}
filename = open(sys.argv[1])
records = Medline.parse(filename)
for record in records:
	year = record["DP"].split()[0]
	if year in year_count:
		year_count[year]+=1
	else:
		year_count[year]=1

for x in sorted(year_count):
	print x,'\t',year_count[x]
	


