#!/bin/bash
# Rscript -e 'install.packages("devtools",repos="https://cran.rstudio.com")'
Rscript -e 'options(unzip="internal");devtools::install_github("Albluca/distutils")'
Rscript -e 'options(unzip="internal");devtools::install_github("Albluca/ElPiGraph.R", ref = "Development")'
Rscript -e 'install.packages("igraph",repos="https://cran.rstudio.com")' #not needed
Rscript -e 'install.packages("KernSmooth",repos="https://cran.rstudio.com")' #not needed
Rscript -e 'source("https://bioconductor.org/biocLite.R");biocLite("BiocInstaller");biocLite("BSgenome.Hsapiens.UCSC.hg19");biocLite("TFBSTools");BiocInstaller::biocLite("GreenleafLab/chromVAR")'

pip install networkx==1.10
pip install shapely

pip install python-igraph #not needed

pip install dash==0.21.0  # The core dash backend
pip install dash-renderer==0.11.3  # The dash front-end
pip install dash-html-components==0.9.0  # HTML components
pip install dash-core-components==0.21.1  # Supercharged components
pip install plotly --upgrade  # Plotly graphing library used in examples
pip install gunicorn

$PYTHON setup.py install --single-version-externally-managed --record=record.txt