#!/usr/bin/python3
# -*-coding:utf-8 -*
import sys

for line in sys.stdin:
	dados = line.split('\t')
	if len(dados) == 6:
		data,DOI,identificador,paises,Localidade,coordenadas = dados
		print('%s\t%s'%(paises, 1))
