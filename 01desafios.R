#Link: https://rpubs.com/datpy/ejercicios01

################################# DESAFÍO 1 ###################################
#Realice otros 10 ejemplos con diferentes operadores matemáticos.
#1. Resta
a = 150
b = 30
c = 150 - 30
print(c)

#2. Módulo
d <- 4%%2
print(d)

#3. Coseno
cosgrad = cos(360*pi/180)
print(cosgrad)

#4. Logaritmo natural
print(log(exp(1)))

#5. Tangente
print(tan(180*pi/180))

#6. Valor absoluto
print(abs(-12312))

#7. Exponencial
print(exp(3))

#8. Logaritmo base 2
print(log2(8))

#9. Potencia
print(2**6)

#10. División entera
print(35%/%3)

################################# DESAFÍO 2 ###################################
#Realice ejemplos usando otros tipos de estructura de datos: elementos booleanos, factores, tablas, entre otros.

#Booleanos
es_animal <- TRUE
print(es_animal)
es_flor <- FALSE
print(es_flor)

x <- 5 >= 4
print(x)
x <- 5 > 4
print(x)
x <- 5 == 4
print(x)
x <- 5 <= 4
print(x)
x <- 5 < 4
print(x)
x <- (TRUE | FALSE)
print(x)
x <- (TRUE & FALSE)
print(x)
x <- (TRUE & FALSE) | (TRUE | FALSE)
print(x)

#Factores
animales <- factor(c("caballo", "vaca", "cerdo", "gallina"))
print(animales)
flores <- factor(c("girasol", "tulipán", "rosa", "lirio"))
print(flores)

#Tablas
genero <- c("M", "F", "F", "M", "F", "M", "M", "F", "F", "F", "F")

datos <- data.frame(genero)
tabla <- table(datos$genero)

print(tabla)

#Números complejos: 4 + i
complejo <- complex(real = 4, imaginary = 1)
print(complejo)

################################# DESAFÍO 3 ###################################
#Construya una función que permita a un jugador jugar al piedra papel o tijeras.

#Para este ejemplo se tendrá en cuenta que se jugará con una máquina.
#1. Piedra
#2. Papel
#3. Tijeras

#El usuario debe definir la cantidad de victorias que se deben conseguir.
#5 rondas.
#1. Condición: Que no se hayan alcanzado la cantidad de victorias, seguir en
#ambos casos.

#x tomará el valor de la cantidad de victorias introducida por el usuario.
cachipun <- function(x){
  #Se empieza con 0 puntos tanto para el usuario como para la máquina.
  humano <- 0
  pc <- 0
  
  #Mientras ninguno de los dos alcance los puntos necesarios, seguirá repitiendo
  #el ciclo.
  while(humano != x && pc != x){
    #Se genera un número al azar entre 1 y 3.
    puntopc = sample(1:3, 1)
    #Se pide un número al usuario entre 1 y 3.
    puntoh = as.integer(readline(prompt="Ingrese: 1. Piedra 2. Papel 3. Tijeras: "))
    
    #Si el usuario escoge piedra, se analizan los 3 posibles casos que escoja la máquina.
    if(puntoh == 1){
      print("Tú: Piedra")
      if(puntopc == 2){
        print("PC: Papel")
        print("Gana en esta ronda PC")
        #Se aumenta 1 al contador de la máquina.
        pc = pc + 1
      }else if(puntopc == 3){
        print("PC: Tijeras")
        print("Ganas en esta ronda")
        #Se aumenta 1 al contador del usuario.
        humano = humano + 1
      }else{
        print("PC: Piedra")
        print("Empate")
      }
    #Si el usuario escoge papel, se analizan los 3 posibles casos que escoja la máquina.
    }else if(puntoh == 2){
      print("Tú: Papel")
      if(puntopc == 1){
        print("PC: Piedra")
        print("Ganas en esta ronda")
        humano = humano + 1
      }else if(puntopc == 3){
        print("PC: Tijeras")
        print("Gana en esta ronda PC")
        pc = pc + 1
      }else{
        print("PC: Papel")
        print("Empate")
      }
    #Si el usuario escoge tijeras, se analizan los 3 posibles casos que escoja la máquina.
    }else if(puntoh == 3){
      print("Tú: Tijeras")
      if(puntopc == 1){
        print("PC: Piedra")
        print("Gana en esta ronda PC")
        pc = pc + 1
      }else if(puntopc == 2){
        print("PC: Papel")
        print("Ganas en esta ronda")
        humano = humano + 1
      }else{
        print("PC: Tijeras")
        print("Empate")
      }
    #Si el usuario escoge otro número, se repite la pregunta. 
    }else{
      print("Elección incorrecta")
    }
  }
  
  #Si los puntos del humano son mayores al de la máquina, gana el usuario.
  if(humano > pc){
    print(paste("Ganaste con ", humano, " puntos."))
    print(paste("El computador perdió con", pc, " puntos."))
  #Caso contrario, gana la máquina.
  }else{
    print(paste("Ganó el computador con", pc, " puntos."))
    print(paste("Perdiste con", humano, " puntos."))
  }
}

#Aquí se introduce la cantidad de victorias necesarias para ganar el juego.
x_1 <- as.integer(readline(prompt="Por favor, ingrese la cantidad de victorias: "))

#Se llama la función con el número anterior.
cachipun(x_1)

################################# DESAFÍO 4 ###################################
#1.- Seleccione un conjunto de datos desde el paquete ‘datasets’ de R. Para ver 
#los datasets disponibles en la consola puede utilizar la función “data()” o 
#puede consultarlos en la página web https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html. 
#Una vez seleccionado puede utilizar la función data(‘nombre_del_dataset’) para cargar el dataset.
require(stats); require(graphics)
plot(presidents, las = 1, ylab = "Approval rating (%)",
     main = "presidents data")

#2.- Describa el conjunto de datos y explique para que fue o podría ser 
#utilizado. Puede usar la función help(‘nombre_del_dataset’). ¿Cuál es la fuente de los datos?
help(presidents)
#El conjunto de datos datos muestra el porcentaje de aprobación de los distintos
#presidentes que ha tenido Estados Unidos entre 1945 y 1975.
#Este puede ser utilizado para analizar qué espectros políticos se ven más favorables,
#cuáles se ven en desventaja, a su vez quién ha sido el presidente con mayor aprobación
#promedio y cuál ha sido el presidente con menor aprobación promedio.
presidents

#3.- Describa cada variable, indique a qué tipo de variable corresponde, 
#indique qué valores puede tomar y su unidad de medida.
#Variable independiente: Tiempo
#Esta variable corresponde a los años, entre 1945 y 1975, donde
#gobernaron distintos presidentes en los Estados Unidos. Puede tomar valores naturales
#del 1945 a 1975 y además se separan en cuartiles.
#Variable dependiente: Aprobación
#Esta variable corresponde a la aprobación que han tenido los diversos presidentes
#según el tiempo qué gobernaron. Puede tomar valores enteros entre 0 y 100, o NA. Se
#mide en porcentaje.

#4.- Ejecute la función summary(“conjunto_de_datos”). ¿Qué puede observar?
summary(presidents)
#Se puede ver que con esta función muestra los datos más relevantes que se pueden extraer.
#Por ejemplo, la aprobación mínima que hubo, la aprobación máxima, la cantidad de
#cuatrimestres donde no se tienen registros de la aprobación, el primer y tercer 
#cuartil, y la mediana.

#5.- Ejecute la función plot(“conjunto_de_datos”). ¿Qué puede observar? 
plot(presidents)
#Se puede observar un gráfico donde la variable independiente (el tiempo)
#se ubica en la recta horizontal, yendo desde 1945 a 1975, y la variable
#dependiente (la aprobación) se ubica en el eje y (vertical) dónde 
#el rango de valores va desde el 30% al 80%.
#A lo largo del tiempo se ve que entre los años 1950 y 1955, y a finales del periodo
#de 1970 y 1975, la aprobación de los presidentes llegan a ser las más bajas.
#Además, en algunas zonas se puede ver que hay "interrupciones" en las líneas
#de aprobación, esto queriendo decir que no se tiene un registro de la aprobación
#de los presidentes en esos períodos de tiempo.

install.packages('rsconnect')





