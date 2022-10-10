install.packages("rmarkdown")
install.packages("devtools")
install.packages("tinytex")
#1.
  #1.a
    seq <- c(-5:5)
    seq # The sequence displays the negative numbers from -5 then increases by 1 to positive 5 only
        # -5 -4 -3 -2 -1  0  1  2  3  4  5
  #1.b
    num1 <- 1 : 7
    num1 #The value of x is 1 2 3 4 5 6 7

#2.
  #2.a
    seq(1, 3, by=0.2) #It increases its value by .2 until it reaches its maximum value at 3
    #1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#3.
    workers_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,22, 37, 34, 19,
                     20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41,
                     53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
 #3.a
    workers_age[3] #Its value is 22   
 #3.b 
    workers_age[2] #Its value is 28
    workers_age[4] #Its value is 36
 #3.c
    workers_age[2:50]
    #[1] 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41
    #[40] 48 27 39 19 30 61 54 58 26 18

#4.
    num4 <- c("first"=3, "second"=0, "third"=9)
    num4    
 #4.a    
    num4[c("first", "third")] #The output displays only the "first" and "third" variables using array
 #4.b
    num4 <- c("first"=3, "second"=0, "third"=9)
    num4 # first second  third 
              #3      0      9 
    
    num4[c("first", "third")]
         # first third 
              #3     9

#5.
 #5.a
    num5 <- c(-3:2)
    num5
    
    num5[2] <- 0
    num5 #The second element in the array was changed to 0 and the result is when it is sequenced, the -2 was changed to 0
    
 #5.b
    num5 <- c(-3:2)
    num5 #-3 -2 -1  0  1  2
    
    num5[2] <- 0
    num5 # -3  0 -1  0  1  2

#6.
 #6.a
    month <- c("Jan", "Feb", "March", "April", "May", "June")
    price_per_Liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
    purchase_quantity <- c(25, 30, 40, 50, 10, 45)
    
    data_frame <- data.frame(month, price_per_Liter, purchase_quantity)
    data_frame
 #6.b
    weighted.mean(price_per_Liter, purchase_quantity) #The avg fuel expenditure of Mr. Cruz from Jan to June is 59.2625

#7.
 #7.a
    data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
              sd(rivers), min(rivers), max(rivers))
    data    
 #7.b
    #The results are 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000
 #7.c
    data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
              sd(rivers), min(rivers), max(rivers))
    data
    ##The results are 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

#8.
 #8.a
    PRanking <- (1:25)
    CelebName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", 
                   "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney",
                   "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                   "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
    Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
    
    rank_data <- data.frame(PRanking, CelebName, Pay)
    rank_data
 #8.b
    PRanking[19] <- 15
    PRanking #1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 15 20 21 22 23 24 25
    
    Pay[19] <- 90
    Pay #67  90 225 110  90 332 302  41  52  88  55  44  55  40 233  34  40  47  90  25  39  45  32  40  31
 #8.c
    ForbesRanking <- data.frame(PRanking, CelebName, Pay)
    ForbesRanking   #PRanking            CelebName Pay
                          #1           Tom Cruise  67
                          #2       Rolling Stones  90
                          #3        Oprah Winfrey 225
                          #4                   U2 110
                          #5          Tiger Woods  90
                          #6     Steven Spielberg 332
                          #7         Howard Stern 302
                          #8              50 Cent  41
                          #9 Cast of the sopranos  52
                          #10           Dan Brown  88
                          #11   Bruce Springsteen  55
                          #12        Donald Trump  44
                          #13        Muhammad Ali  55
                          #14      Paul McCartney  40
                          #15        George Lucas 233
                          #16          Elton John  34
                          #17     David Letterman  40
                          #18      Phil Mickelson  47
                          #15         J.K Rowling  90
                          #20          Bradd Pitt  25
                          #21        Peter Jackson 39
                          #22      Dr. Phil McGraw 45
                          #23           Jay Lenon  32
                          #24        Celine Dion   40
                          #25         Kobe Bryant  31
    