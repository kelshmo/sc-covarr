From rocker/rstudio:3.6.1

RUN apt-get install -y git\
&& R -e "install.packages('BiocManager')"\
&& R -e "install.packages('Seurat')"\
&& R -e "BiocManager::install('Biobase')"\
&& R -e "BiocManager::install('BiocGenerics')"\ 
&& R -e "BiocManager::install('DelayedArray')"\
&& R -e "BiocManager::install('DelayedMatrixStats')"\
&& R -e "BiocManager::install('limma')"\
&& R -e "BiocManager::install('S4Vectors')"\
&& R -e "BiocManager::install('SingleCellExperiment')"\
&& R -e "BiocManager::install('SummarizedExperiment')"\
&& R -e "BiocManager::install('batchelor')"\
&& R -e "install.packages('devtools')"\
&& R -e "install.packages('boot')"\
&& R -e "install.packages('foreign')"\
&& R -e "install.packages('MASS')"\
&& R -e "install.packages('nlme')"\
&& R -e "install.packages('scRNAseq')"\
&& R -e "install.packages('multtest')"\
&& R -e "install.packages('scater')"\
&& R -e "install.packages('readxl')"
