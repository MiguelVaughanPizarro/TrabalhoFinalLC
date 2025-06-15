install.packages("quanteda")
install.packages("readtext")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("pdftools") # Para ler PDFs
install.packages("stringr") # Para manipulação de strings
install.packages("tibble") # Para manipulação de data frames tidy
install.packages("tidyverse")
install.packages("data.table")

library(quanteda)
library(readtext)
library(dplyr)
library(ggplot2)
library(pdftools)
library(stringr)
library(tibble) # Necessário para as_tibble
library(tidyverse)
library(data.table)

setwd("C:/Users/Arlei Pizarro/Desktop")
getwd()


caminho_do_arquivo <- "wlp.txt"

dados <- fread(caminho_do_arquivo)

dados_limpos <- dados$V4
dados_apenas_v4_original <- dados[, .(V4)]
dados_limpos_filtrados <- dados_apenas_v4_original[!grepl("\\$", V4)] 

#Até agora temos a coluna limpa (sem o $), então agora vamos começar a parte de ver ocorrências e frequências do nosso corpus de referência


View(dados_limpos_filtrados)
typeof(dados_apenas_v4_original)


