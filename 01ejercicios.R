#ESTRUCTURAS DE DATOS

#1. Vectores
vector = c(1, 2, 3, 4, 5)
vector

#2. Matrices
datos = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), nrow = 5, ncol = 2)
colnames(datos) = c("peso", "cm")
rownames(datos) = c("maria", "silvia", "ana", "feña", "mia")
datos

#Matriz transpuesta
t(datos)

#Multiplicación de término con término
datos * datos

#Multiplicación matemática
datos %*% datos

#Determinante de una matriz
det(datos)

#Matriz inversa
solve(datos)

#Diagonal de una matriz
diag(datos)

#3. Listas
lista = list(nombre="diplodocus", genero="Saurópodos diplocínidos",
             antiguedad="150 Millones de años", largo_m=c(31.0, 36.5, 35.0, 20, 40))

#Acceder a los atributos de la lista
attributes(lista)

#Cambiar elemento por elemento
lista$nombre = "Brachiosaurus";
lista$genero="Saurópodos  braquiosáuridos"
lista$largo_m[c(1,2,3,4,5)]  = 25
lista

#4. Data Frames
marcas=c("BIOCENTURY","EL-GRANERO-INTEGRAL","GRANOVITA","PAGESA",
         "INTEGRAL-ESPIGAS","PASCUAL","SOJIVIT","HIPP","NUTREXPA",
         "NESTLÉ","KELLOGGS")

productos=c("Bicentury","Todos","Todos","Diet_Rádisson","Todos",
            "Pascual/Essential/MásVital/ViveSoy","Todos","Todos","Cola-Cao",
            "Chocapic/Fitness/Fibre1/Estrellitas/Golden-Grahams/Crunch/Cheerios"
            ,"Todos")

trans=c("NO","NO","NO","NO","NO","NO","NO","NO","NO","SI","SI");

cereales = data.frame(marcas=marcas,productos=productos,transgenicos=trans)

head(cereales)

#write.table permite guardar los datos en un archivo tipo .csv

#row.names = FALSE omite el uso de índices
#quote = FALSE hace que los números no se guarden como string
#dec = "," los decimales se definen por una coma
#sep = ";" se separa a través de un punto y coma
write.table(cereales,"cereales.csv", row.names = FALSE , quote = FALSE, dec = ",", sep = ";",fileEncoding = "latin1")

#read.table permite leer archivos .csv
nueva_tabla=read.table("cereales.csv", header = TRUE, sep = ";") 

#guardar en .rdata
saveRDS(cereales, file = "cereales.Rdata")

#leer .rdata
rep_tabla= readRDS("cereales.Rdata")



