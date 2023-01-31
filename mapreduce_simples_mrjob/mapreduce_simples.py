#Job map reduce para os acessos ao scihub por paises
from mrjob.job import MRJob

class paises_scihub(MRJob):
    def mapper(self, _, line):
        (data,DOI,identificador,paises,Localidade,coordenadas) = line.split('\t')
        yield paises, 1
        
    def reducer(self, paises, ocorrencias):
        yield paises, sum(ocorrencias)

if __name__ == '__main__':
    paises_scihub.run()
