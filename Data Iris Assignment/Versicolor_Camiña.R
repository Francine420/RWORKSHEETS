#Use data and show iris to output data of iris
data("iris")
iris
#subset species in 3 files
subset(iris, Species == "versicolor") #This would only show the versicolor species data

#Create objects for calculation of total mean later
num1 <- iris$Sepal.Length[51:100]
num2 <- iris$Sepal.Width[51:100]
num3 <- iris$Petal.Length[51:100]
num4 <- iris$Petal.Width[51:100]

num1
num2
num3
num4

#Calculate for the total mean
totalmean <- c(num1, num2, num3, num4)
mean(totalmean) #The total mean is 3.573

#Get the mean of each characteristic in setosa species
mean(num1)#Mean for num1 is 5.006
mean(num2)#Mean for num2 is 2.77
mean(num3)#Mean for num3 is 4.26
mean(num4)#Mean for num4 is 1.326