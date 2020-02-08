#POSTWORK 4_MAS

# Ejercicio 1 Imprima la columna hp con la función select(). Intente usar la función pull() en lugar de seleccionar para ver cuál es la diferencia.
mtcars1 <- select(mtcars,hp)
View(mtcars1)
print(mtcars1)

# Ejercicio 2 Imprima todos menos la columna hp utilizando la función select().
mtcars2 <- select(mtcars,-(hp))
print(mtcars2)

#Ejercicio 3 Imprima las columnas mpg, hp, vs, am, gear. Considere usar los dos puntos : para simplificar la selección de columnas consecutivas.
View(mtcars)
mtcars3 <- select(mtcars,1,4,8:10)
View(mtcars3)

# Ejercicio 4 Cree el objeto mycars que contiene las columnas mpg, hp columnas pero deje que los nombres de las columnas sean miles_per_gallon y horse_power respectivamente y traiga los nombres de las filas al dataframe usando tibble :: rownames_to_column ().
select(mycars,miles_per_gallon=mpg, horse_power=hp)
#traer los nombres de filas al data frame
help(tibble)
rownames_to_column(mycars,var="model")

#Ejercicio 5 Cree una nueva variable en el dataframe de mycars km_per_litre utilizando la función mutate(). Sugerencia: 1 mpg es 0.425 km / l.
help(mutate)
mycars %>%
mutate(km_per_litre= mpg*0.425)

#Ejercicio 6 Seleccione al azar e imprima la mitad de las observaciones de mycars. Sugerencia: considere usar la función sample_frac ()
help("sample_frac")
mycars6 <- sample_frac(mtcars,.50)
print(mycars6)

#Ejercicio 7 Cree un objeto mycars_s, que contenga de la 10ª a la 35ª fila de mycars. Sugerencia: considere usar la función slice().
help("slice")
mycars_s <- slice(mtcars,10:35)
print(mycars_s)

#Ejercicio 8 Imprima el objeto mycars_s sin duplicados. Sugerencia: considere usar la función distinct().
help("distinct")
mycars8 <- print(distinct(mycars_s))

#Ejercicio 9 Imprima desde el objeto mycars_s todas las observaciones que tienen mpg> 20 y hp> 100.
mycars9 <- mycars_s%>% filter(mycars_s,mpg>20,hp>100)
print(mycars9)

#Ejercicio 10 Imprima la fila correspondiente al automóvil Lotus Europa
mycars10 <-mycars_s%>% filter(model == "Lotus Europa")

