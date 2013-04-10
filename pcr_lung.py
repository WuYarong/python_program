#!/usr/bin/env python

from Bio import Medline
year_count={}
input_file = open("PCR_Lung_Cancer.txt")
records = Medline.parse(input_file)
for record in records:
	year = record["DP"].split()[0]
	if year in year_count:
		year_count[year]+=1
	else:
		year_count[year]=1

for x in sorted(year_count):
	print x,'\t',year_count[x]
	




