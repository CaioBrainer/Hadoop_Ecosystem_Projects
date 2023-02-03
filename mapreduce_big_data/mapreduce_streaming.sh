#Neste arquivo irei apresentar um job MapReduce utilizando apenas o Hadoop
#Para isso escrevemos o map e o reduce em arquivos python separados

#Adicionando um arquivo ao Hadoop Distributed File System (HDFS)
#Se estiver usando wsl no windows, tem que iniciar o SSH com o comando abaixo:
#	sudo service ssh start
#Caso não tenham sido iniciados, iniciar os serviçoes do ecossistema Hadoop
#	start-all.sh

# 1) Iremos criar a pasta /data no HDFS
hdfs dfs -mkdir /data
  
# 1.1) Os dados a serem inseridos no HDFS são provenientes de um artigo
# Sobre acessoas ao sci-hub, no periodo entre set/2015 a fev/2016 ~2.5gb descompactado
# link: https://datadryad.org/stash/dataset/doi:10.5061/dryad.q447c

# 2) Copiaremos nosso arquivo do sistema de arquivos local para a pasta criada:
hdfs dfs -put *.tbl /data

# 3) Executaremos os jobs Map e Reduce para retornar o acesso total por paises
# durante o periodo de coleta 
mapred streaming   -input /mapreduce/*.tbl   -output /resultados \
-mapper "sci_mapper.py"   -reducer "sci_reducer.py" \
-file sci_mapper.py -file sci_reducer.py
