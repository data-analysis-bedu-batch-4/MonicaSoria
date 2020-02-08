# POSTWORK SESION-03 R


#  EJERCICIO 1
# Escriba un bucle for que itere sobre los números del 1 al 7 e imprima el cubo de cada número usando print ().
  numero  <- 0
  for (i in 1:7){
  numero <- (numero +1)
  cubo <- numero ^ 3
  print(cubo)
  }
  
# EJERCICIO 2
# Escriba un bucle for que itere sobre los nombres de columna del conjunto de datos de iris Ejemplo de salida: Sepal.Length. Utilice las siguientes funciones print (), paste().
  iris <- iris
  n <- ncol(iris)
  for (i in n){
  print (paste(colnames(iris),n))
  }

#EJERCICIO 3
#Escriba un ciclo while que imprima números normales aleatorios estándar (use rnorm ()) pero se detiene (breaks) si obtiene un número mayor que 1.
  while (TRUE){
  n <- rnorm(1)
  print(n)
  if(n>1) {
  break()
  }
  }

#EJERCICIO 4
#El siguiente uso adapta el bucle del último ejercicio para que no imprima números negativos.
  while(TRUE){
  n <- rnorm(1)
  if(n>1){
  print(n)}
  else{
  break()
  }
  }

