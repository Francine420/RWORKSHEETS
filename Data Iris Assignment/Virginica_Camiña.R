#Use data and show iris to output data of iris
data("iris")
iris
#subset species in 3 files
subset(iris, Species == "virginica") #This would only show the virginica species data

#Create objects for calculation of total mean later
num1 <- iris$Sepal.Length[101:150]
num2 <- iris$Sepal.Width[101:150]
num3 <- iris$Petal.Length[101:150]
num4 <- iris$Petal.Width[101:150]

num1
num2
num3
num4

#Calculate for the total mean
totalmean <- c(num1, num2, num3, num4)
mean(totalmean) #The total mean is 4.285

#Get the mean of each characteristic in setosa species
mean(num1)#Mean for num1 is 6.588
mean(num2)#Mean for num2 is 2.974
mean(num3)#Mean for num3 is 5.552
mean(num4)#Mean for num4 is 2.026