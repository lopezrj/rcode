asegurados$cedula = NULL
asegurados$nombre1 = NULL
asegurados$nombre2 = NULL
asegurados$apellido1 = NULL
asegurados$apellido2 = NULL
asegurados$nombre_padre = NULL
asegurados$nombre_madre = NULL
mesnac <- as.integer(substr(asegurados$fecha_nacimiento,5,6))
asegurados <- cbind(asegurados,yearnac)
yearnac <- as.integer(substr(asegurados$fecha_nacimiento,1,4))
asegurados <- cbind(asegurados,yearnac)
edad <- 2013 - asegurados$yearnac
asegurados <- cbind(asegurados,edad)
categoriaedad <- as.integer(trunc(asegurados$edad/5+1))
asegurados <- cbind(asegurados,categoriaedad)
