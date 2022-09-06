# MAGT
# Clase 5
# 06/09/2022

viv <- read.csv("Clases/vivero.csv", header =T)
summary(viv)

boxplot(viv$IE)

hist(viv$IE)


# Normalidad de datos -----------------------------------------------------

shapiro.test(viv$IE)

ks.test(viv$IE, "pnorm", mean= mean(viv$IE), sd=sd(viv$IE))


t.test(viv$IE, mu=0.89)


data("chickwts")
summary(chickwts)
hist(chickwts$weight)
length(chickwts$weight)
shapiro.test(chickwts$weight)

t.test(chickwts$weight, mu=300)


# Dos muestras independientes ---------------------------------------------

boxplot(viv$IE ~ viv$Tratamiento)

shapiro.test(viv$IE)


var.test(viv$IE ~ viv$Tratamiento)

t.test(viv$IE ~ viv$Tratamiento)



invent <- read.csv("Clases/inventario.csv", header = T)
invent$Tratamiento <- as.factor(invent$Tratamiento)
invent$Fecha <- as.factor(invent$Fecha)


boxplot(invent$Diametro ~ invent$Tratamiento)

shapiro.test(invent$Diametro)
var.test(invent$Diametro~invent$Tratamiento)

t.test(invent$Diametro~invent$Tratamiento, var.equal=T)


boxplot(invent$Kilogramo~ invent$Fecha)

shapiro.test(invent$Kilogramo)
var.test(invent$Kilogramo ~  invent$Fecha)

t.test(invent$Kilogramo ~ invent$Fecha, paired = TRUE)
