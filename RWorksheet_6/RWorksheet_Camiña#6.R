library(ggplot2)
data(mpg)
as.data.frame(data(mpg))
data(mpg)
mpg

str(mpg)
library(dplyr)
glimpse(mpg)

#1.
    datampg <- glimpse(mpg)
    ncol(mpg)
    nrow(mpg)
  
#2.
    total <- mpg %>%
      group_by(manufacturer) %>%
      tally(sort = TRUE)
  #2.a
    datampg <- glimpse(mpg)
    unique <- datampg %>% group_by(manufacturer, model) %>%
      distinct() %>% count()
    unique
    
    colnames(unique) <- c("Manufacturer", "Model", "Counts")
    unique    
  
  #2.b
    qplot(model, data = mpg, geom = "bar", fill = manufacturer)
    ggplot(mpg, aes(model, manufacturer)) + geom_point()
    
#3.
    datampg <- mpg
    relationship <- datampg %>% group_by(manufacturer, model) %>%
      distinct() %>% count()
    relationship
  #3.a
    ggplot(mpg, aes(model, manufacturer)) + geom_point()
  #3.b
    ggplot(mpg, aes(model, manufacturer)) + 
      geom_point() +
      geom_jitter()
  
#4.
    datampg <- unique %>% group_by(Model) %>% count()
    datampg    
    
    colnames(datampg) <- c("Model", "Counts")
  #4.a
    qplot(model, data = mpg, main = "Number of Cars per model", xlab = "Model", 
          ylab = "Number of Cars",
          geom = "bar", fill = manufacturer) + coord_flip()
  #4.b
    modelcars <- mpg %>%
      group_by(model) %>%
      tally(sort = TRUE)

#5.
  #5.a
    ggplot(data = mpg, mapping = aes(x = displ, y = cyl, main = "Relationship between No of Cylinders and
                                     Engine Displacement")) + geom_point(mapping = aes(colour = "engine
                                                                                       displacement")) + geom_jitter()
  #5.b
    #Answer: The graph is jittered. The pink horizontal dots are the engine displacements.
  
#6.
  #6.a
    ggplot(data = mpg, mapping = aes(x = drv, y = class)) + geom_point(mapping=aes(color=class)) +
      geom_tile()
  #6.b
    #Answer: Areas that are black are mapped using the geometric point graph. y object is class and x object is drv.
    
#7.
  #Code#1
    ggplot(data = mpg) +
      geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))
  #Code#2
    ggplot(data = mpg) +
      geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

#8.
    ?mpg
  #8.a
    #Answer: manufacturer, model, trans, drv, fl, and class.
  #8.b
    #Answer: They are called double or integers.
  #8.c
    ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) + geom_point()
    #Answer: The data monitors the cty by placing the cty in different hues of color blue.