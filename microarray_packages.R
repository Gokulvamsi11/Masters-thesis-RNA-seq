# ===============================
# Automatic Microarray Setup Script
# ===============================

# Disable prompts
options(ask = FALSE)

# Install BiocManager if missing
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager", ask = FALSE)

# -------------------------------
# Install CRAN packages
# -------------------------------

cran_packages <- c(
  "ggplot2",
  "pheatmap",
  "tidyverse",
  "data.table",
  "plotly",
  "vegan"
)

install.packages(
  cran_packages,
  dependencies = TRUE,
  ask = FALSE
)

# -------------------------------
# Install Bioconductor packages
# -------------------------------

bioc_packages <- c(
  "GEOquery",
  "limma",
  "affy",
  "oligo",
  "Biobase",
  "annotate",
  "AnnotationDbi",
  "affyPLM",
  "lumi",
  "org.Hs.eg.db",
  "clusterProfiler",
  "fgsea",
  "ReactomePA",
  "reactome.db",
  "msigdbr",
  "enrichplot"
)

BiocManager::install(
  bioc_packages,
  update = TRUE,
  ask = FALSE
)

# Install Illumina annotation package
BiocManager::install(
  "illuminaHumanv4.db",
  ask = FALSE,
  update = TRUE,
  force = TRUE
)
BiocManager::install("hta20transcriptcluster.db", ask = FALSE,
                     update = TRUE,
                     force = TRUE)
# -------------------------------
# Load Libraries
# -------------------------------

library(GEOquery)
library(limma)
library(affy)
library(oligo)
library(Biobase)

library(affyPLM)


library(annotate)
library(AnnotationDbi)
library(org.Hs.eg.db)
library(illuminaHumanv4.db)
library(hta20transcriptcluster.db)
library(lumi)

library(tidyverse)
library(data.table)

library(ggplot2)
library(pheatmap)
library(plotly)
library(vegan)

library(clusterProfiler)
library(fgsea)
library(ReactomePA)
library(reactome.db)
library(msigdbr)
library(enrichplot)

# -------------------------------
# Check installation
# -------------------------------

sessionInfo()

print("All microarray analysis packages installed and loaded successfully.")