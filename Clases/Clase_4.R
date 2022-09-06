# Laboratorio 2


data("chickwts")

head(chickwts)

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

barplot(feeds[order(feeds, decreasing = TRUE)], 
        horiz = TRUE, col="#996600")
