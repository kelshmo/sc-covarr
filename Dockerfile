FROM rocker/tidyverse:3.6.1

RUN apt-get update -y\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev\
&& apt-get install -y curl libcurl4-openssl-dev\
&& apt-get install -y git\
&& R -e "install.packages('BiocManager')"\
&& R -e "BiocManager::install('Biobase')"\
&& R -e "BiocManager::install('BiocGenerics')"\ 
&& R -e "BiocManager::install('DelayedArray')"\
&& R -e "BiocManager::install('DelayedMatrixStats')"\
&& R -e "BiocManager::install('limma')"\
&& R -e "BiocManager::install('S4Vectors')"\
&& R -e "BiocManager::install('SingleCellExperiment')"\
&& R -e "BiocManager::install('SummarizedExperiment')"\
&& R -e "BiocManager::install('batchelor')"\
&& R -e "BiocManager::install('edgeR')"\
&& R -e "BiocManager::install('qvalue')"\
&& R -e "BiocManager::install('multtest')"\
&& R -e "BiocManager::install('scater')"\
&& R -e "BiocManager::install('scRNAseq')"\
&& R -e "install.packages('Seurat')"\
&& R -e "install.packages('synapser', repos = c('http://ran.synapse.org', 'http://cran.fhcrc.org'))"\
&& R -e "install.packages('boot')"\
&& R -e "install.packages('foreign')"\
&& R -e "install.packages('MASS')"\
&& R -e "install.packages('nlme')"\
&& R -e "install.packages('readxl')"\
&& R -e "install.packages('rqdatatable')"

RUN apt-get install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev\
&& R -e "devtools::install_github('cole-trapnell-lab/leidenbase')"\
&& R -e "devtools::install_github('cole-trapnell-lab/monocle3')"\
&& R -e "devtools::install_url('https://cran.r-project.org/src/contrib/Archive/Matrix.utils/Matrix.utils_0.9.7.tar.gz')"
