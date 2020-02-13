######################################
########## Fundamentos de R ##########
##########    Sesi�n 01     ##########
##########  Ejercicio 02    ##########
######################################

# Para crear un dataframe
df.oscars.2020 <- data.frame(pelicula = c('Jojo Rabbit', '1917', 'Joker', 'The Irishman'),
                    ganador = c(1,0,0,0),
                    anio = c(2020,2020,2020,2020))

# Para ver el n�mero de renglones de un dataframe utilizamos nrow
nrow(df.oscars.2020)

# Para ver el n�mero de columnas de un dataframe utilizamos ncol
ncol(df.oscars.2020)

# Para ver el n�mero de renglones y columnas de un dataframe utilizamos dim
dim(df.oscars.2020)

# Utilizamos paste para imprimir texto y el resultado de c�digo
print(paste('El n�mero de columnas de nuesrtro dataframe es:', ncol(df.oscars.2020)))
print(paste('El n�mero de renglones de nuesrtro dataframe es:', nrow(df.oscars.2020)))

# Para ver el nombre de las columnas utilizamos names
names(df.oscars.2020)


# Para traer un elemento de un dataframe debemos darle la ubicaci�n
# Primer rengl�n, primer columna
df.oscars.2020[1,1]
# Tercer rengl�n, primer columna
df.oscars.2020[3,1]
# Tercer rengl�n, segunda columna
df.oscars.2020[3,2]


# Para traer renglones completos de un dataframe
# El primer rengl�n utilizando el n�mero de rengl�n que es
df.oscars.2020[1,]
# Los dos primeros renglones
df.oscars.2020[1:2,]
# Los tres primeros renglones 
df.oscars.2020[1:3,]
# Todos los renglones menos el primero
df.oscars.2020[-1,]


# Para traer columnas completas de un dataframe
# La primer columna por el n�mero de columna que es
df.oscars.2020[,1]
# La primer columna por el nombre de columna que es
df.oscars.2020[,'pelicula']
# La primer columna por el nombre de columna que es
df.oscars.2020$pelicula
# Las primeras dos columnas 
df.oscars.2020[,1:2]
# Todas las columnas menos la primera
df.oscars.2020[,-1]


# Para traer elementos segun renglones y columnas
# Primer rengl�n, dos primeras columnas
df.oscars.2020[1, 1:2]
df.oscars.2020[1, c('pelicula','ganador')]

# Primeros tres renglones, dos �ltimas columnas
df.oscars.2020[1:3, 2:3]

# Primeros tres renglones, primer y �ltima columna
df.oscars.2020[1:3, c(1,3)]
df.oscars.2020[1:3, c('pelicula','anio')]


# Para agreger un nuevo rengl�n utilizamos rbind
df.oscars.2020.parte2 <- data.frame(pelicula = c('Once Upon a Time in Hollywood', 'Parasite'),
                                    ganador = c(0,0),
                                    anio = c(2020,2020))
df.oscars.2020
df.oscars.2020.parte2

df.oscars <- rbind(df.oscars.2020, df.oscars.2020.parte2)
df.oscars

# Para agregar una columna 
df.oscars.newcolumn <- data.frame(calificacion = c(9,9,8,6,7,10))
df.oscars.newcolumn
df.oscars <- cbind(df.oscars, df.oscars.newcolumn)
df.oscars

# Para transformar una columna
df.oscars$calificacion <- df.oscars$calificacion + 0.5
df.oscars

# Para transformar una columna y agregar la transformaci�n como una nueva
df.oscars$nueva_col <- (df.oscars$calificacion + 8)/2
df.oscars

# Para eliminar una columna
df.oscars$anio <- NULL
df.oscars