![123](https://user-images.githubusercontent.com/92734524/216488983-67aa4c36-9e6c-4801-b558-ce404be8605b.jpeg)

<h1>Pequenos projetos utilizando ferramentas do esossistema HADOOP</h1>
 
Neste repositório irei apresentar pequenos projetos no qual utilizo as ferramentas do ecossistema Hadoop aprendidas durante o curso: 
*Engenharia de dados com Hadoop e Spark*. Os projetos aqui realizados utilizarão datasets de diversas fontes e áreas de negócios, 
tendo em vista que o objetivo principal é demonstrar o aprendizado adquirido durante o curso de formação ma Data Science Academy. 

# Tabela de conteúdos 

1. [Ferramentas](https://github.com/CaioBrainer/hadoop_ecosystem_little_projects#ferramentas)

2. [Projetos](https://github.com/CaioBrainer/hadoop_ecosystem_little_projects#projetos)
   - [Job Map Reduce com Hadoop e MRJob](https://github.com/CaioBrainer/hadoop_ecosystem_little_projects##job_map_reduce_com_hadoop_e_mrjob)
   - [Job Map Reduce com Hadoop Streaming](https://github.com/CaioBrainer/hadoop_ecosystem_little_projects##Job_map_reduce_com_hadoop_streaming)

# Ferramentas

As principais ferramentas utilizadas são os componentes do ecossistema Hadoop no SO linux Ubuntu 22.04. Abaixo segue a lista das versões utilizadas:

- Apache Hadoop 3.3.2
- Apache Hive 3.1.2
- Apache Spark 3.3.1
- Miniconda 3
- MRJob

# Projetos

## Job Map Reduce com Hadoop e MRJob

Neste pequeno projeto, utilizamos a biblioteca MRJob para facilitar a escrita de um job mapreduce, atuando como uma camada intermediária entre
o python e o Hadoop. O objetivo deste projeto é verificar a média de amigos por idade
na rede social Facebook. Para esta análise utilizamos um pequeno dataset fornecido no curso *Engenharia de dados com Hadoop e Spark* (o dataset encontra se na pasta junto aos scripts python e shell).

(inserir imagens e resultados)

## Job Map Reduce com Hadoop Streaming

Este projeto via aprofundar a utilização do Hadoop, utilizando o sistema hdfs para armazenar arquivos com milhões de observações de acessos ao site sci-hub entre setembro de 2015 e fevereiro de 2016. Utilizei o *Hadoop Streaming* para processar o job MapReduce diretamente em linguagem python. O dataset utilizados encontra se no link: https://datadryad.org/stash/dataset/doi:10.5061/dryad.q447c

(inserir imagens e resultados)
