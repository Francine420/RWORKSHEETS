#Use data and show iris to output data of iris
data("iris")
iris
#subset species in 3 files
subset(iris, Species == "setosa") #This would only show the setosa species data

#Create objects for calculation of total mean later
num1 <- iris$Sepal.Length[1:50]
num2 <- iris$Sepal.Width[1:50]
num3 <- iris$Petal.Length[1:50]
num4 <- iris$Petal.Width[1:50]

num1
num2
num3
num4

#Calculate for the total mean
totalmean <- c(num1, num2, num3, num4)
mean(totalmean) #The total mean is 2.5355

#Get the mean of each characteristic in setosa species
mean(num1)#Mean for num1 is 5.006
mean(num2)#Mean for num2 is 3.428
mean(num3)#Mean for num3 is 1.462
mean(num4)#Mean for num4 is 0.246