######################################################################
#### Script de demanda do custo de medicamentos de hepatite C ########
########### V.1.0 - Desenvolvido por Mikael Lemos ####################
######################################################################

#### Carregando bibliotecas ####

#install.packages('dplyr')
library('dplyr')

#install.packages("tidyr")
library('tidyr')

#install.packages("data.table")
library('data.table')

#install.packages('stringr')
library('stringr')

#install.packages('Amelia')
library('Amelia')

#install.packages("tidyverse")
library(tidyverse)

#install.packages("lubridate")
library(lubridate)

#install.packages("ggplot2")
library(ggplot2)

#install.packages("xlsx")
 
library(xlsx)

#install.packages("rJava")
 
library(rJava)

#install.packages("read.dbc")

library(read.dbc)

#install.packages("forcats")

library(forcats)

#install.packages("foreign")

library("foreign")

#install.packages("openxlsx")

library("openxlsx")

#install.packages("RColorBrewer")

library(RColorBrewer)

#install.packages("readr")

library(readr)

#install.packages("fs")

library(fs)

#install.packages("stringi")
library(stringi)

#install.packages("diffdf")
library(diffdf)


########################################
####### Total de pessoas tratadas ######
####### Hepatite C - 2015 - 2020 #######
########################################

# 2014
setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2014/ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2014 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2014_CID_hepc <- filter(br_tabwin_am_2014, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2014_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2014_CID_hepc.csv")

# 2015

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2015/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2015 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2015_CID_hepc <- filter(br_tabwin_am_2015, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2015_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_CID_hepc.csv")

BR_med_2015_CID_hepc$AP_NATJUR <- ""

# 2016

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2016/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2016 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2016_CID_hepc <- filter(br_tabwin_am_2016, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2016_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2016_CID_hepc.csv")

# 2017

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2017/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2017 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2017_CID_hepc <- filter(br_tabwin_am_2017, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2017_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2017_CID_hepc.csv")

# 2018

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2018_2019/2018/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2018 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2018_CID_hepc <- filter(br_tabwin_am_2018, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2018_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2018_CID_hepc.csv")

# 2019

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/tabwin_AM_2018_2019/2019/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2019 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2019_CID_hepc <- filter(br_tabwin_am_2019, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2019_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2019_CID_hepc.csv")

# 2020

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/TABWIN_2020/tabwin_2021_26_04_21/ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/")
file_names <- dir("./") #where you have your files

br_tabwin_am_2020 <-  rbindlist(lapply(file_names, read.dbc) , fill = TRUE)

BR_med_2020_CID_hepc <- filter(br_tabwin_am_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2020_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2020_CID_hepc.csv")

## Carregar dados de 2014 -2020

BR_med_2014_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2014_CID_hepc.csv")
BR_med_2014_CID_hepc_un <- distinct(BR_med_2014_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2015_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_CID_hepc.csv")
BR_med_2015_CID_hepc_un <- distinct(BR_med_2015_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2016_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2016_CID_hepc.csv")
BR_med_2016_CID_hepc_un <- distinct(BR_med_2016_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2017_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2017_CID_hepc.csv")
BR_med_2017_CID_hepc_un <- distinct(BR_med_2017_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2018_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2018_CID_hepc.csv")
BR_med_2018_CID_hepc_un <- distinct(BR_med_2018_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2019_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2019_CID_hepc.csv")
BR_med_2019_CID_hepc_un <- distinct(BR_med_2019_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

BR_med_2020_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2020_CID_hepc.csv")
BR_med_2020_CID_hepc_un <- distinct(BR_med_2020_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

## Agregando tratamentos

# 2015 - 2016

BR_med_2015_2016_CID_hepc_un <- do.call("rbind", list(BR_med_2015_CID_hepc_un, BR_med_2016_CID_hepc_un))

BR_med_2015_2016_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc))

# 2015 - 2017

BR_med_2015_2017_CID_hepc_un <- do.call("rbind", list(BR_med_2015_CID_hepc_un, BR_med_2016_CID_hepc_un, BR_med_2017_CID_hepc_un))

BR_med_2015_2017_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc, BR_med_2017_CID_hepc))

# 2015 - 2018

BR_med_2015_2018_CID_hepc_un <- do.call("rbind", list(BR_med_2015_CID_hepc_un, BR_med_2016_CID_hepc_un, BR_med_2017_CID_hepc_un, BR_med_2018_CID_hepc_un))

BR_med_2015_2018_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc, BR_med_2017_CID_hepc, BR_med_2018_CID_hepc))

# 2015 - 2019

BR_med_2015_2019_CID_hepc_un <- do.call("rbind", list(BR_med_2015_CID_hepc_un, BR_med_2016_CID_hepc_un, BR_med_2017_CID_hepc_un, BR_med_2018_CID_hepc_un, BR_med_2019_CID_hepc_un))

BR_med_2015_2019_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc, BR_med_2017_CID_hepc, BR_med_2018_CID_hepc, BR_med_2019_CID_hepc))

#####
## Cálculo de tratamentos por ano
#####

# 2015

BR_med_2015_antijoin_un <- anti_join(BR_med_2015_CID_hepc_un, BR_med_2014_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2015_antijoin_un <- select(BR_med_2015_antijoin_un, -X)

BR_med_2015_antijoin <- anti_join(BR_med_2015_CID_hepc, BR_med_2014_CID_hepc,  by="AP_CNSPCN")
BR_med_2015_antijoin <- select(BR_med_2015_antijoin, -X)

# 2016

BR_med_2016_antijoin_un <- anti_join(BR_med_2016_CID_hepc_un, BR_med_2015_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2016_antijoin_un <- select(BR_med_2016_antijoin_un, -X)

BR_med_2016_antijoin <- anti_join(BR_med_2016_CID_hepc, BR_med_2015_CID_hepc,  by="AP_CNSPCN")
BR_med_2016_antijoin <- select(BR_med_2016_antijoin, -X)

# 2017

BR_med_2017_antijoin_un <- anti_join(BR_med_2017_CID_hepc_un, BR_med_2015_2016_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2017_antijoin_un <- select(BR_med_2017_antijoin_un, -X)

BR_med_2017_antijoin <- anti_join(BR_med_2017_CID_hepc, BR_med_2015_2016_CID_hepc,  by="AP_CNSPCN")
BR_med_2017_antijoin <- select(BR_med_2017_antijoin, -X)

# 2018

BR_med_2018_antijoin_un <- anti_join(BR_med_2018_CID_hepc_un, BR_med_2015_2017_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2018_antijoin_un <- select(BR_med_2018_antijoin_un, -X)

BR_med_2018_antijoin <- anti_join(BR_med_2018_CID_hepc, BR_med_2015_2017_CID_hepc,  by="AP_CNSPCN")
BR_med_2018_antijoin <- select(BR_med_2018_antijoin, -X)

# 2019

BR_med_2019_antijoin_un <- anti_join(BR_med_2019_CID_hepc_un, BR_med_2015_2018_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2019_antijoin_un <- select(BR_med_2019_antijoin_un, -X)

BR_med_2019_antijoin <- anti_join(BR_med_2019_CID_hepc, BR_med_2015_2018_CID_hepc,  by="AP_CNSPCN")
BR_med_2019_antijoin <- select(BR_med_2019_antijoin_un, -X)

#2020

BR_med_2020_antijoin_un <- anti_join(BR_med_2020_CID_hepc_un, BR_med_2015_2019_CID_hepc_un,  by="AP_CNSPCN")
BR_med_2020_antijoin_un <- select(BR_med_2020_antijoin_un, -X)

BR_med_2020_antijoin <- anti_join(BR_med_2020_CID_hepc, BR_med_2015_2019_CID_hepc,  by="AP_CNSPCN")
BR_med_2020_antijoin <- select(BR_med_2020_antijoin, -X)

####
# Lista de medicamentos/esquemas
####

# 06.04.76.002-7 - DACLATASVIR 60 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.003-5 - DACLATASVIR 30 MG (POR COMPRIMIDO REVESTIDO)
# 06.04.76.001-9 - SOFOSBUVIR 400 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.005-1 - LEDIPASVIR 90 MG / SOFOSBUVIR 400 MG (POR COMPRIMIDO)	
# 06.04.76.008-6 - SOFOSBUVIR 400MG + VELPATASVIR 100 MG (POR COMPRIMIDO)
# 06.04.64.003-0 - SIMEPREVIR 150 MG (POR CÁPSULA)
# 06.01.12.003-5 - RIBAVIRINA 250 MG (POR CAPSULA)	Revogado desde 06/2010
# 06.04.45.001-0 - RIBAVIRINA 250 MG (POR CAPSULA) 
# 06.04.76.004-3 - OMBITASVIR - 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS) + DASABUVIR 250 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS).
# 06.04.76.007-8 - GLECAPREVIR 100MG + PIBRENTASVIR 40 MG (POR COMPRIMIDO)
# 06.04.39.004-1 - ALFAPEGINTERFERONA 2A 180MCG (POR SERINGA PREENCHIDA)	
# 06.04.39.005-0 - ALFAPEGINTERFERONA 2B 80MCG (POR FRASCO-AMPOLA)	
# 06.04.39.006-8 - ALFAPEGINTERFERONA 2B 100MCG (POR FRASCO-AMPOLA)	
# 06.04.39.007-6 - ALFAPEGINTERFERONA 2B 120MCG (POR FRASCO-AMPOLA)

#######
### Esquemas terapêuticos, retratamentos, falha de tratamento
###### 

# 2015

BR_med_2015_antijoin_groupby_n_dacla_30 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2015_antijoin_groupby_n_dacla_60 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2015_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2015_antijoin_groupby_n_dacla_60, BR_med_2015_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2015_antijoin_groupby_n_riba <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2015_antijoin_groupby_n_simeprevir <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2015_antijoin_groupby_n_ovr <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2015_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2015_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2015_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2015_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2015_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2015_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2015_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2015_antijoin_groupby <- BR_med_2015_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2015_antijoin_groupby_n <- BR_med_2015_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2015_antijoin_groupby_n_sofo, BR_med_2015_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2015_antijoin_groupby_n_sofo, BR_med_2015_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2015_antijoin_groupby_n_sofo, BR_med_2015_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2015_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2015_antijoin_groupby_n_sofo, BR_med_2015_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2015_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2015_antijoin_groupby_n_sofo, BR_med_2015_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2015_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2015_antijoin_groupby_n_dacla_60, BR_med_2015_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2015_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2015_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2015_antijoin_groupby_n_riba, BR_med_2015_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2015_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2015_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2015_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2015_antijoin_groupby_n_gleca_pibre, BR_med_2015_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2015_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2015_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

# 2016

BR_med_2016_antijoin_groupby_n_dacla_30 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2016_antijoin_groupby_n_dacla_60 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2016_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2016_antijoin_groupby_n_dacla_60, BR_med_2016_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2016_antijoin_groupby_n_riba <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2016_antijoin_groupby_n_simeprevir <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2016_antijoin_groupby_n_ovr <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2016_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2016_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2016_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2016_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2016_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2016_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2016_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2016_antijoin_groupby <- BR_med_2016_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2016_antijoin_groupby_n <- BR_med_2016_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2016_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2016_antijoin_groupby_n_sofo, BR_med_2016_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2016_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2016_antijoin_groupby_n_sofo, BR_med_2016_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2016_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2016_antijoin_groupby_n_sofo, BR_med_2016_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2016_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2016_antijoin_groupby_n_sofo, BR_med_2016_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2016_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2016_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2016_antijoin_groupby_n_sofo, BR_med_2016_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2016_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2016_antijoin_groupby_n_dacla_60, BR_med_2016_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2016_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2016_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2016_antijoin_groupby_n_riba, BR_med_2016_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2016_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2016_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2016_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2016_antijoin_groupby_n_gleca_pibre, BR_med_2016_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2016_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2016_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

# 2017

BR_med_2017_antijoin_groupby_n_dacla_30 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2017_antijoin_groupby_n_dacla_60 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2017_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2017_antijoin_groupby_n_dacla_60, BR_med_2017_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2017_antijoin_groupby_n_riba <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2017_antijoin_groupby_n_simeprevir <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2017_antijoin_groupby_n_ovr <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2017_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2017_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2017_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2017_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2017_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2017_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2017_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2017_antijoin_groupby <- BR_med_2017_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2017_antijoin_groupby_n <- BR_med_2017_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2017_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2017_antijoin_groupby_n_sofo, BR_med_2017_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2017_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2017_antijoin_groupby_n_sofo, BR_med_2017_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2017_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2017_antijoin_groupby_n_sofo, BR_med_2017_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2017_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2017_antijoin_groupby_n_sofo, BR_med_2017_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2017_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2017_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2017_antijoin_groupby_n_sofo, BR_med_2017_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2017_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2017_antijoin_groupby_n_dacla_60, BR_med_2017_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2017_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2017_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2017_antijoin_groupby_n_riba, BR_med_2017_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2017_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2017_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2017_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2017_antijoin_groupby_n_gleca_pibre, BR_med_2017_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2017_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2017_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

# 2018

BR_med_2018_antijoin_groupby_n_dacla_30 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2018_antijoin_groupby_n_dacla_60 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2018_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2018_antijoin_groupby_n_dacla_60, BR_med_2018_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2018_antijoin_groupby_n_riba <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2018_antijoin_groupby_n_simeprevir <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2018_antijoin_groupby_n_ovr <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2018_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2018_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2018_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2018_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2018_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2018_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2018_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2018_antijoin_groupby <- BR_med_2018_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2018_antijoin_groupby_n <- BR_med_2018_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2018_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2018_antijoin_groupby_n_sofo, BR_med_2018_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2018_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2018_antijoin_groupby_n_sofo, BR_med_2018_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2018_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2018_antijoin_groupby_n_sofo, BR_med_2018_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2018_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2018_antijoin_groupby_n_sofo, BR_med_2018_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2018_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2018_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2018_antijoin_groupby_n_sofo, BR_med_2018_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2018_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2018_antijoin_groupby_n_dacla_60, BR_med_2018_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2018_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2018_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2018_antijoin_groupby_n_riba, BR_med_2018_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2018_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2018_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2018_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2018_antijoin_groupby_n_gleca_pibre, BR_med_2018_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2018_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2018_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

# 2019

BR_med_2019_antijoin_groupby_n_dacla_30 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2019_antijoin_groupby_n_dacla_60 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2019_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2019_antijoin_groupby_n_dacla_60, BR_med_2019_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2019_antijoin_groupby_n_riba <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2019_antijoin_groupby_n_simeprevir <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2019_antijoin_groupby_n_ovr <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2019_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2019_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2019_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2019_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2019_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2019_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2019_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2019_antijoin_groupby <- BR_med_2019_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2019_antijoin_groupby_n <- BR_med_2019_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2019_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2019_antijoin_groupby_n_sofo, BR_med_2019_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2019_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2019_antijoin_groupby_n_sofo, BR_med_2019_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2019_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2019_antijoin_groupby_n_sofo, BR_med_2019_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2019_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2019_antijoin_groupby_n_sofo, BR_med_2019_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2019_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2019_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2019_antijoin_groupby_n_sofo, BR_med_2019_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2019_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2019_antijoin_groupby_n_dacla_60, BR_med_2019_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2019_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2019_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2019_antijoin_groupby_n_riba, BR_med_2019_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2019_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2019_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2019_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2019_antijoin_groupby_n_gleca_pibre, BR_med_2019_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2019_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2019_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

# 2020 

BR_med_2020_antijoin_groupby_n_dacla_30 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760035)

BR_med_2020_antijoin_groupby_n_dacla_60 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760027)

BR_med_2020_antijoin_groupby_n_dacla_90_ij <- inner_join(BR_med_2020_antijoin_groupby_n_dacla_60, BR_med_2020_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760019)

BR_med_2020_antijoin_groupby_n_riba <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604450010)

BR_med_2020_antijoin_groupby_n_simeprevir <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604640030)

BR_med_2020_antijoin_groupby_n_ovr <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760043 )

BR_med_2020_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

BR_med_2020_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

BR_med_2020_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760086 )

BR_med_2020_antijoin_groupby_n_alfa_2a_180 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604390041 )

BR_med_2020_antijoin_groupby_n_alfa_2b_80 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604390050 )

BR_med_2020_antijoin_groupby_n_alfa_2b_100 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604390068)

BR_med_2020_antijoin_groupby_n_alfa_2b_120 <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604390076 )

BR_med_2020_antijoin_groupby <- BR_med_2020_antijoin %>% group_by(AP_CNSPCN, AP_PRIPAL, AP_CMP)
BR_med_2020_antijoin_groupby_n <- BR_med_2020_antijoin_groupby %>% summarise(n = n())

# esquemas terapêuticos

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2020_antijoin_groupby_n_sofo_dacla30_ij <- inner_join(BR_med_2020_antijoin_groupby_n_sofo, BR_med_2020_antijoin_groupby_n_dacla_30, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo_dacla30_ij, by="AP_CNSPCN")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2020_antijoin_groupby_n_sofo_dacla60_ij <- inner_join(BR_med_2020_antijoin_groupby_n_sofo, BR_med_2020_antijoin_groupby_n_dacla_60, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo_dacla60_ij, by="AP_CNSPCN")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2020_antijoin_groupby_n_sofo_dacla90_ij <- inner_join(BR_med_2020_antijoin_groupby_n_sofo, BR_med_2020_antijoin_groupby_n_dacla_90_ij, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo_dacla90_ij, by="AP_CNSPCN")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2020_antijoin_groupby_n_sofo_sime_ij <- inner_join(BR_med_2020_antijoin_groupby_n_sofo, BR_med_2020_antijoin_groupby_n_simeprevir, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo_sime_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo_sime_ij, by="AP_CNSPCN")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2020_antijoin_groupby_n_sofo_riba_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2020_antijoin_groupby_n_sofo_alfa2a180_ij <- inner_join(BR_med_2020_antijoin_groupby_n_sofo, BR_med_2020_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_sofo_alfa2a180_ij, by="AP_CNSPCN")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2020_antijoin_groupby_n_dacla60_alfa2a180_ij <- inner_join(BR_med_2020_antijoin_groupby_n_dacla_60, BR_med_2020_antijoin_groupby_n_alfa_2a_180, by="AP_CNSPCN")

BR_med_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_dacla60_alfa2a180_ij, by="AP_CNSPCN")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2020_antijoin_groupby_n_ovrdas_RBV_ij <- inner_join(BR_med_2020_antijoin_groupby_n_riba, BR_med_2020_antijoin_groupby_n_ovr, by="AP_CNSPCN")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2020_antijoin_groupby_n_ledi_sofo <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760051 )

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2020_antijoin_groupby_n_gleca_pibre <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760078 )

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2020_antijoin_groupby_n_gleca_pibre_sofo_ij <- inner_join(BR_med_2020_antijoin_groupby_n_gleca_pibre, BR_med_2020_antijoin_groupby_n_sofo, by="AP_CNSPCN")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2020_antijoin_groupby_n_velpata_sofo <- filter(BR_med_2020_antijoin_groupby_n, AP_PRIPAL == 0604760086 )


####
## Esquemas terapêuticos - 2015 - 2020
####

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_dacla30_RBV_ij, BR_med_2016_antijoin_groupby_n_sofo_dacla30_RBV_ij, BR_med_2017_antijoin_groupby_n_sofo_dacla30_RBV_ij, BR_med_2018_antijoin_groupby_n_sofo_dacla30_RBV_ij, BR_med_2019_antijoin_groupby_n_sofo_dacla30_RBV_ij, BR_med_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij.csv")

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_dacla60_RBV_ij, BR_med_2016_antijoin_groupby_n_sofo_dacla60_RBV_ij, BR_med_2017_antijoin_groupby_n_sofo_dacla60_RBV_ij, BR_med_2018_antijoin_groupby_n_sofo_dacla60_RBV_ij, BR_med_2019_antijoin_groupby_n_sofo_dacla60_RBV_ij, BR_med_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij.csv")

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_dacla90_RBV_ij, BR_med_2016_antijoin_groupby_n_sofo_dacla90_RBV_ij, BR_med_2017_antijoin_groupby_n_sofo_dacla90_RBV_ij, BR_med_2018_antijoin_groupby_n_sofo_dacla90_RBV_ij, BR_med_2019_antijoin_groupby_n_sofo_dacla90_RBV_ij, BR_med_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_dacla90_RBV_ij.csv")

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2015_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_sime_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_sime_RBV_ij, BR_med_2016_antijoin_groupby_n_sofo_sime_RBV_ij, BR_med_2017_antijoin_groupby_n_sofo_sime_RBV_ij, BR_med_2018_antijoin_groupby_n_sofo_sime_RBV_ij, BR_med_2019_antijoin_groupby_n_sofo_sime_RBV_ij, BR_med_2020_antijoin_groupby_n_sofo_sime_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij.csv")

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2015_antijoin_groupby_n_sofo_riba_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_riba_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_riba_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_riba_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_riba_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_riba_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_riba_ij, BR_med_2016_antijoin_groupby_n_sofo_riba_ij, BR_med_2017_antijoin_groupby_n_sofo_riba_ij, BR_med_2018_antijoin_groupby_n_sofo_riba_ij, BR_med_2019_antijoin_groupby_n_sofo_riba_ij, BR_med_2020_antijoin_groupby_n_sofo_riba_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij.csv")

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2015_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, BR_med_2016_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, BR_med_2017_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, BR_med_2018_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, BR_med_2019_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, BR_med_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij.csv")

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2015_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, BR_med_2016_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, BR_med_2017_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, BR_med_2018_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, BR_med_2019_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, BR_med_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij.csv")

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2015_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2015

BR_med_2016_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2016

BR_med_2017_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2017

BR_med_2018_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2018

BR_med_2019_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2019

BR_med_2020_antijoin_groupby_n_ovrdas_RBV_ij$ano <-2020

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_ovrdas_RBV_ij, BR_med_2016_antijoin_groupby_n_ovrdas_RBV_ij, BR_med_2017_antijoin_groupby_n_ovrdas_RBV_ij, BR_med_2018_antijoin_groupby_n_ovrdas_RBV_ij, BR_med_2019_antijoin_groupby_n_ovrdas_RBV_ij, BR_med_2020_antijoin_groupby_n_ovrdas_RBV_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij.csv")

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2015_antijoin_groupby_n_ledi_sofo$ano <- 2015

BR_med_2016_antijoin_groupby_n_ledi_sofo$ano <- 2016

BR_med_2017_antijoin_groupby_n_ledi_sofo$ano <- 2017

BR_med_2018_antijoin_groupby_n_ledi_sofo$ano <- 2018

BR_med_2019_antijoin_groupby_n_ledi_sofo$ano <- 2019

BR_med_2020_antijoin_groupby_n_ledi_sofo$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_ledi_sofo, BR_med_2016_antijoin_groupby_n_ledi_sofo, BR_med_2017_antijoin_groupby_n_ledi_sofo, BR_med_2018_antijoin_groupby_n_ledi_sofo, BR_med_2019_antijoin_groupby_n_ledi_sofo, BR_med_2020_antijoin_groupby_n_ledi_sofo ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_ledi_sofo.csv")

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2015_antijoin_groupby_n_gleca_pibre$ano <- 2015

BR_med_2016_antijoin_groupby_n_gleca_pibre$ano <- 2016

BR_med_2017_antijoin_groupby_n_gleca_pibre$ano <- 2017

BR_med_2018_antijoin_groupby_n_gleca_pibre$ano <- 2018

BR_med_2019_antijoin_groupby_n_gleca_pibre$ano <- 2019

BR_med_2020_antijoin_groupby_n_gleca_pibre$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_gleca_pibre, BR_med_2016_antijoin_groupby_n_gleca_pibre, BR_med_2017_antijoin_groupby_n_gleca_pibre, BR_med_2018_antijoin_groupby_n_gleca_pibre, BR_med_2019_antijoin_groupby_n_gleca_pibre, BR_med_2020_antijoin_groupby_n_gleca_pibre ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_gleca_pibre.csv")

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2015_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2015

BR_med_2016_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2016

BR_med_2017_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2017

BR_med_2018_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2018

BR_med_2019_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2019

BR_med_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij <- do.call("rbind", list( BR_med_2015_antijoin_groupby_n_gleca_pibre_sofo_ij, BR_med_2016_antijoin_groupby_n_gleca_pibre_sofo_ij, BR_med_2017_antijoin_groupby_n_gleca_pibre_sofo_ij, BR_med_2018_antijoin_groupby_n_gleca_pibre_sofo_ij, BR_med_2019_antijoin_groupby_n_gleca_pibre_sofo_ij, BR_med_2020_antijoin_groupby_n_gleca_pibre_sofo_ij ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij.csv")

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2015_antijoin_groupby_n_velpata_sofo$ano <- 2015

BR_med_2016_antijoin_groupby_n_velpata_sofo$ano <- 2016

BR_med_2017_antijoin_groupby_n_velpata_sofo$ano <- 2017

BR_med_2018_antijoin_groupby_n_velpata_sofo$ano <- 2018

BR_med_2019_antijoin_groupby_n_velpata_sofo$ano <- 2019

BR_med_2020_antijoin_groupby_n_velpata_sofo$ano <- 2020

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo <-  do.call("rbind", list( BR_med_2015_antijoin_groupby_n_velpata_sofo, BR_med_2016_antijoin_groupby_n_velpata_sofo, BR_med_2017_antijoin_groupby_n_velpata_sofo, BR_med_2018_antijoin_groupby_n_velpata_sofo, BR_med_2019_antijoin_groupby_n_velpata_sofo, BR_med_2020_antijoin_groupby_n_velpata_sofo ))

write.csv(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_velpata_sofo.csv")

###
# substituição de procedimentos por nomes 
###

# 06.04.76.002-7 - DACLATASVIR 60 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.003-5 - DACLATASVIR 30 MG (POR COMPRIMIDO REVESTIDO)
# 06.04.76.001-9 - SOFOSBUVIR 400 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.005-1 - LEDIPASVIR 90 MG / SOFOSBUVIR 400 MG (POR COMPRIMIDO)	
# 06.04.76.008-6 - SOFOSBUVIR 400MG + VELPATASVIR 100 MG (POR COMPRIMIDO)
# 06.04.64.003-0 - SIMEPREVIR 150 MG (POR CÁPSULA)
# 06.01.12.003-5 - RIBAVIRINA 250 MG (POR CAPSULA)	Revogado desde 06/2010
# 06.04.45.001-0 - RIBAVIRINA 250 MG (POR CAPSULA) 
# 06.04.76.004-3 - OMBITASVIR - 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS) + DASABUVIR 250 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS).
# 06.04.76.007-8 - GLECAPREVIR 100MG + PIBRENTASVIR 40 MG (POR COMPRIMIDO)
# 06.04.39.004-1 - ALFAPEGINTERFERONA 2A 180MCG (POR SERINGA PREENCHIDA)	
# 06.04.39.005-0 - ALFAPEGINTERFERONA 2B 80MCG (POR FRASCO-AMPOLA)	
# 06.04.39.006-8 - ALFAPEGINTERFERONA 2B 100MCG (POR FRASCO-AMPOLA)	
# 06.04.39.007-6 - ALFAPEGINTERFERONA 2B 120MCG (POR FRASCO-AMPOLA)

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL.x == 0604760019] <- "SOFOSBUVIR 400 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_PRIPAL.y == 0604760035] <- "DACLATASVIR 30 MG"

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL.x == 0604760019] <- "SOFOSBUVIR 400 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_PRIPAL.y == 0604760027] <- "DACLATASVIR 60 MG"

## daclatasvir 90mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

# daclatasvir 90mg  = 0

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL.x == 0604760019] <- "SOFOSBUVIR 400 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_PRIPAL.y == 0604640030] <- "SIMEPREVIR 150 MG"

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_PRIPAL.x == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_PRIPAL.y == 0604760019] <- "SOFOSBUVIR 400 MG"

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL.x == 0604760019] <- "SOFOSBUVIR 400 MG"
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_PRIPAL.y == 0604390041] <- "ALFAPEGINTERFERONA 2A 180MCG"

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL.x == 0604760027] <- "DACLATASVIR 60 MG"
BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_PRIPAL.y == 0604390041] <- "ALFAPEGINTERFERONA 2A 180MCG"

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_PRIPAL.x == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_PRIPAL.y == 0604760043] <- "OMBITASVIR 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG + DASABUVIR 250 MG"

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_PRIPAL == 0604760051] <- "LEDIPASVIR 90 MG/SOFOSBUVIR 400 MG"

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_PRIPAL == 0604760078] <- "GLECAPREVIR 100MG+PIBRENTASVIR 40 MG"

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_PRIPAL.x[BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_PRIPAL.x == 0604760078] <- "GLECAPREVIR 100MG+PIBRENTASVIR 40 MG"
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_PRIPAL.y[BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_PRIPAL.y == 0604760019] <- "SOFOSBUVIR 400 MG"

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_PRIPAL[BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_PRIPAL == 0604760086] <- "SOFOSBUVIR 400MG+VELPATASVIR 100 MG"

setwd("C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/")

#######
### Gráficos
#######
## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij$AP_CMP, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 30 MG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 30 MG"

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 30 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij$AP_CMP, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij$AP_CMP, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$AP_PRIPAL <- "SIMEPREVIR 150 MG/RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$AP_PRIPAL <- "SIMEPREVIR 150 MG/RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com SIMEPREVIR 150 MG/RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

## sofosbuvir 400mg + RBV  (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x = ym(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x <- as.Date(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x <- format(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij$AP_CMP.x, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij %>% group_by(AP_CNSPCN, AP_PRIPAL.x,ano )
BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$AP_PRIPAL.x <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))
## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas/24 semanas)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij$AP_CMP, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL.x,ano )
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/ALFAPEGINTERFERONA 2A 180 MCG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/ALFAPEGINTERFERONA 2A 180 MCG" 

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, -AP_PRIPAL.x)

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/ALFAPEGINTERFERONA 2A 180 MCG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                           axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij$AP_CMP, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL.x,ano )
BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$AP_PRIPAL.x <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG" 

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue", width = 0.4) +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/DACLATASVIR 60 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                                       axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))
## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x = ym(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x <- as.Date(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x <- format(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij$AP_CMP.x, "%m/%Y")

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij %>% group_by(AP_CNSPCN, AP_PRIPAL.x,ano )
BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$AP_PRIPAL.x <- "RIBAVIRINA 250 MG/OMBITASVIR 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG/DASABUVIR 250 MG" 

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, -AP_PRIPAL.x)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/OMBITASVIR 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG/DASABUVIR 250 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com RIBAVIRINA 250 MG/OMBITASVIR 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG/DASABUVIR 250 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))
## ledipasvir 90mg /sofosbuvir 400mg (8 semanas/12 semanas/ 24 semanas)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP, "%Y")

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$ano <- BR_med_2015_2020_antijoin_groupby_n_ledi_sofo$AP_CMP

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot <- BR_med_2015_2020_antijoin_groupby_n_ledi_sofo %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n <- BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$AP_PRIPAL <- "LEDIPASVIR 90 MG/SOFOSBUVIR 400 MG" 

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$AP_PRIPAL <- "LEDIPASVIR 90 MG/SOFOSBUVIR 400 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com LEDIPASVIR 90 MG/SOFOSBUVIR 400 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17), axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP, "%Y")

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$ano <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre$AP_CMP

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$AP_PRIPAL <- "GLECAPREVIR 100MG/PIBRENTASVIR 40 MG" 

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$AP_PRIPAL <- "GLECAPREVIR 100MG/PIBRENTASVIR 40 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com GLECAPREVIR 100MG/PIBRENTASVIR 40 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17), axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x = ym(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x <- as.Date(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x <- format(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x, "%Y")

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$ano <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij$AP_CMP.x

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij %>% group_by(AP_CNSPCN, AP_PRIPAL.x,ano )
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n <- BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$AP_PRIPAL.x <- "GLECAPREVIR 100MG/PIBRENTASVIR 40 MG/SOFOSBUVIR 400 MG" 

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$AP_PRIPAL <- "GLECAPREVIR 100MG/PIBRENTASVIR 40 MG/SOFOSBUVIR 400 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue", width = 0.4) +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com GLECAPREVIR 100MG/PIBRENTASVIR 40 MG/SOFOSBUVIR 400 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17),
                                                                                                                                                                                             axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))
## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP = ym(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP <- as.Date(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP <- format(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP, "%Y")

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$ano <- BR_med_2015_2020_antijoin_groupby_n_velpata_sofo$AP_CMP

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot <- BR_med_2015_2020_antijoin_groupby_n_velpata_sofo %>% group_by(AP_CNSPCN, AP_PRIPAL,ano )
BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n <- BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot %>% summarise(n = n())

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$AP_PRIPAL <- "SOFOSBUVIR 400MG/VELPATASVIR 100 MG" 

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano <- years(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano <- year(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n <- aggregate(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n['n'], by=BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n['ano'], sum)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano <- as.character(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$AP_PRIPAL <- "SOFOSBUVIR 400MG/VELPATASVIR 100 MG" 

ggplot(data=BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos com SOFOSBUVIR 400MG/VELPATASVIR 100 MG dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17), axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))

#######
### Scatter plot - número de tratamentos por ano - todos os esquemas 2015 - 2020
#######

BR_med_2015_2020_antijoin_groupby_n_esquemas <-  do.call("rbind", list(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n,BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n))

################# scatter plot linhas ########################
ggplot(data = BR_med_2015_2020_antijoin_groupby_n_esquemas , aes(x =ano, 
                                y = n, 
                                group=AP_PRIPAL, 
                                color=AP_PRIPAL )) + geom_line() +
  geom_point() + 
  labs( 
    y="Frequência", 
    x="Ano"
  ) + geom_text(aes(label=n),hjust=0, vjust=0, check_overlap = TRUE, size = 3)  + theme_minimal() + scale_y_continuous() + scale_color_brewer(palette = "Paired")
#############################################################

BR_med_2015_2020_antijoin_groupby_n_esquemas_agregado_ano <- aggregate(BR_med_2015_2020_antijoin_groupby_n_esquemas['n'], by=BR_med_2015_2020_antijoin_groupby_n_esquemas['ano'], sum)


ggplot(data=BR_med_2015_2020_antijoin_groupby_n_esquemas_agregado_ano, aes(x=ano, y=n)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n), vjust=-0.3, size=7)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Número de tratamentos dispensados entre os anos de 2015-2020") +theme(axis.text=element_text(size=17), axis.title=element_text(size=18,face="bold")) + theme(plot.title = element_text(size = 20, face = "bold"))


##########################################
############## tratamentos retratamentos e pessoas tratadas - preencher a tabela de resultados
#########################################

###########
###
### Critérios: 1 = abandono (12 semanas); 2 = abandono (12 semanas) ; 3 = tratamento (12 semanas); >3 divisível por 3 tratamento/retratamento (12 semanas); >3 não divisível por 3 tratamento/abandono (12 semanas);=2 tratamento(8 semanas), >=2 divisível por 2 tratamento/retratamento, <2 abandono,= 4 tratamento (16 semanas); >=4 tratamento/abandono (16 semanas); 6 = tratamento (24 semanas)  ; > 6 divisível por 6 = tratamento/retratamento (24 semanas); >6 não divisível por 6 = tratamento/abandono (24 semanas)
###
###########

## daclatasvir 30mg + sofosbuvir 400mg+RBV (12 semanas/24 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2020$n)

view(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, ano == 2020)


## daclatasvir 60mg + sofosbuvir 400mg+RBV (12 semanas/ 24 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2016$n)

view(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, ano == 2020)

##simeprevir 150mg +sofosbuvir 4000mg+RBV (12 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2020$n)

view(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, ano == 2020)

## sofosbuvir 400mg + RBV  (12 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2020$n)

view(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, ano == 2020)

## sofosbuvir 400mg + alfapeginterferona 2a 180mcg + RBV (12 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2015$n)

view(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, ano == 2020)

# daclatasvir 60mg + alfapeginterferona 2a 180mcg + RBV (24 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2020$n)

view(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, ano == 2020)

## Ombitasvir/veruprevir/ritonavir + dasabuvir + ribavirina (12 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2018$n)

view(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, ano == 2020)

## ledipasvir 90mg /sofosbuvir 400mg (8 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2015$n)

view(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, ano == 2020)

## glecaprevir 100mg/pibrentasvir 40mg (8 semanas/ 12 semanas/ 16 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2015$n)

view(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, ano == 2020)

## glecaprevir 100mg/pibrentasvir 40mg + sofosbuvir 400mg (12 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2015$n)

view(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, ano == 2020)

## velpatasvir 100mg/sofosbuvir 400mg (12 semanas/ 24 semanas)

table(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2015$n)

view(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2015 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2015)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2016 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2016)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2017 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2017)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2018 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2018)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2019 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2019)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n_2020 <- filter(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n, ano == 2020)

####################
#### Outros esquemas e tratamentos em cada ano
###################

BR_med_2015_2020_antijoin_groupby_n_esquemas <-  do.call("rbind", list(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n,BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n, BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n, BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n, BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n))

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n, AP_CNSPCN,AP_PRIPAL, ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla30_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n, AP_CNSPCN,AP_PRIPAL, ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_sofo_dacla60_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n, AP_CNSPCN, AP_PRIPAL, ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_sofo_sime_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n, AP_CNSPCN,AP_PRIPAL = AP_PRIPAL.x, ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_sofo_riba_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n,AP_CNSPCN, AP_PRIPAL = AP_PRIPAL.x, ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$ano)
BR_med_2015_2020_antijoin_groupby_n_sofo_alfa2a180_RBV_ij_plot_n$AP_PRIPAL <- "RIBAVIRINA 250 MG/SOFOSBUVIR 400 MG/ALFAPEGINTERFERONA 2A 180 MCG" 

BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n,AP_CNSPCN, AP_PRIPAL = AP_PRIPAL.x, ano)
BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_dacla60_alfa2a180_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n,AP_CNSPCN, AP_PRIPAL = AP_PRIPAL.x, ano)
BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_ovrdas_RBV_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n,AP_CNSPCN, AP_PRIPAL, ano)
BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_ledi_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n,AP_CNSPCN, AP_PRIPAL, ano) 
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n,AP_CNSPCN, AP_PRIPAL = AP_PRIPAL.x, ano)
BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_gleca_pibre_sofo_ij_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n <- select(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n,AP_CNSPCN, AP_PRIPAL, ano)
BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano  <- as.character(BR_med_2015_2020_antijoin_groupby_n_velpata_sofo_plot_n$ano)

BR_med_2015_2020_antijoin_groupby_n_esquemas_gp <- BR_med_2015_2020_antijoin_groupby_n_esquemas %>% group_by(AP_PRIPAL, ano )
BR_med_2015_2020_antijoin_groupby_n_esquemas_gp_n <- BR_med_2015_2020_antijoin_groupby_n_esquemas_gp %>% summarise(n = n())

write.xlsx(BR_med_2015_2020_antijoin_groupby_n_esquemas_gp_n, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_antijoin_groupby_n_esquemas_gp_n.xlsx")

#####
## Todos os medicamentos entre 2015-2020
#####

BR_med_2015_2020_medicamentos <-  do.call("rbind", list(BR_med_2015_antijoin_un,BR_med_2016_antijoin_un, BR_med_2017_antijoin_un, BR_med_2018_antijoin_un, BR_med_2019_antijoin_un, BR_med_2020_antijoin_un))

BR_med_2015_2020_medicamentos_un <-  distinct(BR_med_2015_2020_medicamentos, AP_CNSPCN , .keep_all = TRUE)

BR_med_2015_2020_outros_tratamentos <- anti_join(BR_med_2015_2020_medicamentos, BR_med_2015_2020_antijoin_groupby_n_esquemas,  by="AP_CNSPCN")

BR_med_2015_2020_outros_tratamentos$AP_CMP = ym(BR_med_2015_2020_outros_tratamentos$AP_CMP)

BR_med_2015_2020_outros_tratamentos$AP_CMP <- as.Date(BR_med_2015_2020_outros_tratamentos$AP_CMP, format = "%Y-%m-%d")
BR_med_2015_2020_outros_tratamentos$AP_CMP <- format(BR_med_2015_2020_outros_tratamentos$AP_CMP, "%Y")

BR_med_2015_2020_outros_tratamentos_gp <- BR_med_2015_2020_outros_tratamentos %>% group_by(AP_PRIPAL,AP_CMP )
BR_med_2015_2020_outros_tratamentos_gp_n <- BR_med_2015_2020_outros_tratamentos_gp %>% summarise(n = n())

# 06.04.76.002-7 - DACLATASVIR 60 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.003-5 - DACLATASVIR 30 MG (POR COMPRIMIDO REVESTIDO)
# 06.04.76.001-9 - SOFOSBUVIR 400 MG (POR COMPRIMIDO REVESTIDO)	
# 06.04.76.005-1 - LEDIPASVIR 90 MG / SOFOSBUVIR 400 MG (POR COMPRIMIDO)	
# 06.04.76.008-6 - SOFOSBUVIR 400MG + VELPATASVIR 100 MG (POR COMPRIMIDO)
# 06.04.64.003-0 - SIMEPREVIR 150 MG (POR CÁPSULA)
# 06.01.12.003-5 - RIBAVIRINA 250 MG (POR CAPSULA)	Revogado desde 06/2010
# 06.04.45.001-0 - RIBAVIRINA 250 MG (POR CAPSULA) 
# 06.04.76.004-3 - OMBITASVIR - 12,5 MG/VERUPREVIR 75 MG/ RITONAVIR 50 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS) + DASABUVIR 250 MG POR COMPRIMIDO (COM 02 COMPRIMIDOS REVESTIDOS).
# 06.04.76.007-8 - GLECAPREVIR 100MG + PIBRENTASVIR 40 MG (POR COMPRIMIDO)
# 06.04.39.004-1 - ALFAPEGINTERFERONA 2A 180MCG (POR SERINGA PREENCHIDA)	
# 06.04.39.005-0 - ALFAPEGINTERFERONA 2B 80MCG (POR FRASCO-AMPOLA)	
# 06.04.39.006-8 - ALFAPEGINTERFERONA 2B 100MCG (POR FRASCO-AMPOLA)	
# 06.04.39.007-6 - ALFAPEGINTERFERONA 2B 120MCG (POR FRASCO-AMPOLA)

BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604450010] <- "RIBAVIRINA 250 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390017] <- "ALFAINTERFERONA 2B 3.000.000 UI"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390025] <- "ALFAINTERFERONA 2B 5.000.000 UI"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390041] <- "ALFAPEGINTERFERONA 2A 180MCG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390050] <- "ALFAPEGINTERFERONA 2A 80MCG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390068] <- "ALFAPEGINTERFERONA 2A 100MCG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604390076] <- "ALFAPEGINTERFERONA 2A 120MCG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604250010] <- "FILGRASTIM 300MCG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604470053] <- "ALFAEPOETINA 10.000 UI"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604640013] <- "BOCEPREVIR 200 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604640021] <- "TELAPREVIR 375 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604640030] <- "SIMEPREVIR 150 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604760019] <- "SOFOSBUVIR 400 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604760027] <- "DACLATASVIR 60 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604760035] <- "DACLATASVIR 30 MG"
BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL[BR_med_2015_2020_outros_tratamentos_gp_n$AP_PRIPAL == 0604760043] <- "OMBITASVIR - 12,5MG/VERUPREVIR 75 MG/ RITONAVIR 50MG+DASABUVIR 250 MG POR"

view(BR_med_2015_2020_outros_tratamentos_gp_n)

BR_med_2015_2020_outros_tratamentos_gp_n$AP_CMP <- gsub('.{2}$', '', BR_med_2015_2020_outros_tratamentos_gp_n$AP_CMP)

write.xlsx(BR_med_2015_2020_outros_tratamentos_gp_n, "C:/Users/lemos/Downloads/HEPATITES/DEMANDAS/CUSTO_MEDICAMENTOS_HEPC/BR_med_2015_2020_outros_tratamentos_gp_n.xlsx")

BR_med_2015_2020_outros_tratamentos_gp_n <- BR_med_2015_2020_outros_tratamentos_gp_n %>%
  group_by(AP_PRIPAL, AP_CMP) %>% 
  summarise_each(funs(sum))


