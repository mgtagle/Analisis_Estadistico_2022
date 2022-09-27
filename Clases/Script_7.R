# MAGT
# Análisis de varianza (ANOVA)
# 27/09/2022 


# Datos -------------------------------------------------------------------

arena <- c(6, 10, 8, 6, 14, 17, 9, 11, 7, 11)
arcilla <- c(17, 15, 3, 11, 14, 12, 12, 8, 10, 13)
limo <- c(13, 16, 9, 12, 15, 16, 17, 13, 18, 14)

prod <- c(arena, arcilla, limo)

suelo <- gl(3,10,30, labels = c("arena", "arcilla", "limo"))

avena <- data.frame(suelo, prod)


# función tapply ----------------------------------------------------------

tapply(avena$prod, avena$suelo, length)
tapply(avena$prod, avena$suelo, mean)
tapply(avena$prod, avena$suelo, sd)
tapply(avena$prod, avena$suelo, var)

# revisar la homogeneidad de las varianzas
bartlett.test(avena$prod, avena$suelo)

fligner.test(avena$prod, avena$suelo)

# Revisar datos de forma gráfica



