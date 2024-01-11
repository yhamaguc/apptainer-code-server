#! /bin/bash

#
# Usage:
# After build the image and then execute this on guest (binding host's $HOME)
#

if [ -e ${HOME}/.Renviron ]
then
  touch ${HOME}/.Renviron
fi

if grep -q 'R_LIBS_USER=' ${HOME}/.Renviron
then
  echo 'Please add `R_LIBS` path to `.Renviron` manually'
else
  echo 'R_USER=${HOME}' >> ${HOME}/.Renviron
  echo 'R_LIBS_USER=${R_USER}/R/x86_64-pc-linux-gnu-library' >> ${HOME}/.Renviron
fi

R -e 'install.packages("BiocManager")' && \
R -e 'BiocManager::install(version = "3.18", ask = FALSE)' && \
R -e 'BiocManager::install("AnnotationDbi")' && \
R -e 'BiocManager::install("org.Hs.eg.db")' && \
R -e 'BiocManager::install("org.Mm.eg.db")' && \
R -e 'BiocManager::install("ballgown")' && \
R -e 'BiocManager::install("clusterProfiler")' && \
R -e 'BiocManager::install("DESeq2")' && \
R -e 'BiocManager::install("EBSeq")' && \
R -e 'BiocManager::install("edgeR")' && \
R -e 'BiocManager::install("GO.db")' && \
R -e 'BiocManager::install("polyester")' && \
R -e 'BiocManager::install("tximport")' && \
R -e 'BiocManager::install("rtracklayer")' && \
R -e 'BiocManager::install("rhdf5")' && \
R -e 'BiocManager::install("GenomicFeatures")' && \
R -e 'devtools::install_github("pachterlab/sleuth")' && \
R -e 'install.packages("here")' && \
R -e 'install.packages("docopt")' && \
R -e 'install.packages("foreach")' && \
R -e 'install.packages("ggpubr")' && \
R -e 'install.packages("ggplotify")' && \
R -e 'install.packages("ggrepel")' && \
R -e 'install.packages("ggedit")' && \
R -e 'install.packages("ggcorrplot")' && \
R -e 'install.packages("UpSetR")' && \
R -e 'install.packages("plotly")' && \
R -e 'install.packages("hydroGOF")' && \
R -e 'install.packages("XML")' && \
R -e 'install.packages("plotROC")' && \
R -e 'install.packages("clipr")' && \
R -e 'install.packages("languageserver")' && \
R -e 'install.packages("httpgd")' && \
R -e 'BiocManager::install("genomation")' && \
R -e 'BiocManager::install("GenomicRanges")' && \
R -e 'BiocManager::install("methylKit")'
