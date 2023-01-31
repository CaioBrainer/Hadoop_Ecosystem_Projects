#Neste script iremos colocar um arquivo simples para testar o funcionamento
#de um pequeno job mapreduce com o pacote python MRJob. 

#Adicionando um arquivo ao Hadoop Distributed File System (HDFS)
#Se estiver usando wsl no windows, tem que iniciar o SSH com o comando abaixo:
#	sudo service ssh start
#Caso não tenham sido iniciados, iniciar os serviçoes do ecossistema Hadoop
#	start-all.sh

# 1) criaremos uma pasta no HDFS
hdfs dfs -mkdir /mrjob_mapreduce

# 2) Copiaremos nosso arquivo do sistema de arquivos local para a pasta criada:
hdfs dfs -put AmigosIdade.py /mrjob_mapreduce

# 3) Executaremos o job previavemente escrito para avaliar a média de amigos
#por idade no FaceBook

#    É necessário a instalação da biblioteca mrjob para converter
#    O job mapreduce escrito em Python para Java
#    Na pasta onde se encontra o arquivo .py executamos o comando:
python AmigosIdade.py hdfs:///mapreduce/amigos_facebook.csv -r hadoop
