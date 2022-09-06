# clase 3
# Marco A
# 23/08/2022


# Importar datos CSV ------------------------------------------------------

est <- read.csv("Clases/cumbres.csv", header = T)
head(est) # Revisar los primeros seis datos
tail(est) # revisar los últimos seis datos


viv <- read.csv("Clases/vivero.csv", header =T)

boxplot(viv$IE ~ viv$Tratamiento)

viv$Tratamiento <- as.factor(viv$Tratamiento)

boxplot(viv$IE ~ viv$Tratamiento)
summary(viv)
