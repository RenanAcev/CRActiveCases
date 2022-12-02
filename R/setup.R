library(rmarkdown)
library(here)

source(here("R/archivoFinal.R"))

provincias <- c(
  "SAN JOSE","CARTAGO","HEREDIA","ALAJUELA","LIMON","PUNTARENAS","GUANACASTE"
)

for (provincia in provincias){
  render(
    input = here("rmd/reporteCasos.rmd"),
    output_file= paste0(provincia, ".html"),
    output_dir = here("doc/"),
    params = list(provincia = provincia)
  )
  }


