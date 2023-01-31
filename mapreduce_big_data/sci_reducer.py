#!/usr/bin/python3
# -*-coding:utf-8 -*
import sys

prev_pais = None
prev_contagem = 0

for line in sys.stdin:
	line = line.strip()
	pais, count = line.split('\t')
	
	count=int(count)
	
	if prev_pais == pais:
		prev_contagem += count
	else:
		if prev_pais:
			print(prev_pais, prev_contagem)
		prev_contagem = count
		prev_pais = pais

if prev_pais == pais:
	print('%s\t%s'%(prev_pais, prev_contagem))
		
