#install.packages("readr") # you only need to run it once

library(readr)

freeIL18 <- read_csv("C:/Users/dmunoz/Downloads/freeIL18.csv") 
# change accordingly to where you put the download


View(freeIL18)





#install.packages("ggplot2") # you only need to run it once

#install.packages("gapminder") # you only need to run it once


# Load Libraries
library("ggplot2")
library("gapminder")


#View full data
View(gapminder)


#Check out the ifrst 10 rows
head(gapminder)


#Plot simple
gapminder |>
  ggplot( aes(x=gdpPercap, y=lifeExp, color=continent)) +
  geom_point()

  

#Plot more complex
    
# Chart
gapminder |>
      filter(year=="1952" & country!="Kuwait")|>
      arrange(desc(pop)) |>
      ggplot( aes(x=gdpPercap, y=lifeExp, fill=continent, size=pop)) +
      geom_point(alpha=0.7, shape=21) +
      theme_bw()
    



