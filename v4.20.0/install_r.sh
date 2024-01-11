#! /bin/bash

#
# Usage:
# After build the image and then execute this on guest (binding host's $HOME)
#

# NOTE: Append user local directory to `libPaths` to avoid NOT writable error when installing package
# FIXME: Change .Rprofile to .Renviron
if [ -e ${HOME}/.Rprofile ]
then
  touch ${HOME}/.Rprofile
fi

if grep -q '.libPaths' ${HOME}/.Rprofile
then
  echo 'Please add `R_LIBS` path to `.Rprofile` manually'
else
  echo '.libPaths(c(file.path("~/R", paste0(R.version$platform, "-library"), paste(strsplit(strsplit(R.version$version.string, " ")[[1]][[3]], "[.]")[[1]][c(1, 2)], collapse = ".")), .libPaths()))' >> ${HOME}/.Rprofile
fi

R -e 'dir.create(file.path("~/R", paste0(R.version$platform, "-library"), paste(strsplit(strsplit(R.version$version.string, " ")[[1]][[3]], "[.]")[[1]][c(1, 2)], collapse = ".")), recursive = TRUE, showWarnings = FALSE)' && \

R -e 'install.packages("RcppGSL")' && \
R -e 'install.packages("RcppZiggurat")' && \
R -e 'install.packages("devtools", dependencies = TRUE)' && \
R -e 'devtools::install_version("tidyverse", version = "2.0.0")' && \
R -e 'install.packages("here")' && \
R -e 'install.packages("docopt")' && \
R -e 'install.packages("Rfast")' && \
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
R -e 'BiocManager::install("genomation")' && \
R -e 'BiocManager::install("GenomicRanges")' && \
R -e 'BiocManager::install("methylKit")' && \
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
R -e 'install.packages("XML")' && \
R -e 'install.packages("plotROC")' && \
R -e 'install.packages("clipr")' && \
R -e 'install.packages("languageserver")' && \
R -e 'install.packages("httpgd")' && \
R -e 'install.packages("jsonlite")'
