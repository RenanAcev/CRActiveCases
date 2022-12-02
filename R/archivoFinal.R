library(readr)
library(here)

archivo1 <- read.csv(file = "C:/Users/PC/OneDrive/Escritorio/Mineria de Datos/Introducción Programación R/Semana 4/Tarea_Semana4/data/raw/archivo_1.csv",
                                        sep = ",",
                                        dec = ".",
                                        header = T) 

archivo2 <- read.csv(file = "C:/Users/PC/OneDrive/Escritorio/Mineria de Datos/Introducción Programación R/Semana 4/Tarea_Semana4/data/raw/archivo_2.csv",
                     sep = ",",
                     dec = ".",
                     header = T) 

archivo3 <- read.csv(file = "C:/Users/PC/OneDrive/Escritorio/Mineria de Datos/Introducción Programación R/Semana 4/Tarea_Semana4/data/raw/archivo_3.csv",
                     sep = ",",
                     dec = ".",
                     header = T) 

archivo4 <- read.csv(file = "C:/Users/PC/OneDrive/Escritorio/Mineria de Datos/Introducción Programación R/Semana 4/Tarea_Semana4/data/raw/archivo_4.csv",
                     sep = ",",
                     dec = ".",
                     header = T) 

archivo5 <- read.csv(file = "C:/Users/PC/OneDrive/Escritorio/Mineria de Datos/Introducción Programación R/Semana 4/Tarea_Semana4/data/raw/archivo_5.csv",
                     sep = ",",
                     dec = ".",
                     header = T) 

df_archivo1<- data.frame(archivo1)

df_archivo2<- data.frame(archivo2)

df_archivo3<- data.frame(archivo3)

df_archivo4<- data.frame(archivo4)

df_archivo5<- data.frame(archivo5)

archivo_final<-rbind(df_archivo1,df_archivo2,df_archivo3,df_archivo4,df_archivo5)

write_rds(archivo_final, here("data/clean/casos.rds"))

is.data.frame(archivo_final)

