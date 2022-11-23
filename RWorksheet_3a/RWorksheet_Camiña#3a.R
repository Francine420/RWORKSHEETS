#1.
  #1.a
    LETTERS[1:11]
  #1.b
    LETTERS[1:26 %% 2==1]
  #1.c
    vowel <- LETTERS[c(1,5,9,15,21)]
    vowel    
  #1.d
    letters[22:26]
  #1.e
    letters[15:24]


#2.
  #2.a
    city <- c("Tuguegarao City","Manila","Iloilo City","Tacloban","Samal Island","Davao City")
    city
  #2.b
    temp <- c(42,39,34,34,30,27)
    temp    
  #2.c
    names(temp) <- city
    temp    
  #2.d
    temp[5:6]

    
#Matrix

#2.
    #2.a
    num1 <- matrix(data = c(1:8,11:14),3,4)
    num1
    #2.b
    num1 * 2
    #2.c
    num1[2,]
    #2.d
    num1[c(1,2), c(3,4)]
    #2.e
    num1[c(3),c(2,3)]
    #2.f
    num1[,4]
    #2.g
    dimnames(num1) <- list(c("isa","dalawa","tatlo"), c("uno","dos","tres","quatro"))
    num1    
    #2.h
    dim(num1) <- c(6,2)
    num1    

    
#3.
  #3.a
    num2 <- c(1,2,3,6,7,8,9,0,3,4,5,1)
    threedimensional <- array(rep(num2,2), dim = c(2,4,3))    
    threedimensional    
  #3.b
    dim(threedimensional) 
    #There are three dimensions in the array
  #3.c
    dimnames(threedimensional) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", 
                                                                     "2nd-Dimentional Array",
                                                                     "3rd-Dimensional Array"))