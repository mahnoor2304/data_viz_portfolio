#basic lopping introduction#
#what is a loop# 
#using loop with for function#
for(i in 1:5){  # create a for loop that runs 5 times (1 to 5)
  print(i)      # each time the for loop runs, print the value of i
}
#this shows that the loop runs through the vector of 1-5#
#iterable is called i#
x <- 0          # make a new scalar called x with a value of 0

for(i in 1:10){ # create a for loop that runs 10 times (1 to 10)
  x <- x + i    # within our for loop we are adding the value of i to the value of x
}

print(x)        # print x
#Here we have created a variable called x that has a value of 0. x therefore has the value of i added to each it time the loop runs, meaning that the value of i becomes 55 from 0 (0 + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10).#
#practice#
x <- 6          # make a new scalar called x with a value of 0

for(i in 2:22){ # create a for loop that runs 10 times (1 to 10)
  x <- x + i    # within our for loop we are adding the value of i to the value of x
}

print(x)

#basic loop questions 2.3#
#part 1 done on other r sheet#
#2) Try changing the numbers in the for() function (1:10) to numbers of your choosing multiple times. What do you see?#
for(i in 1:25){  # create a for loop that runs 5 times (1 to 5)
  print(i)      # each time the for loop runs, print the value of i
}
for(i in 2:80){  # create a for loop that runs 5 times (1 to 5)
  print(i)      # each time the for loop runs, print the value of i
}
#3) Try changing the the name of i in the for() function to a name of your choosing and get the loop to run.#
for(n in 1:5){  # create a for loop that runs 5 times (1 to 5)
  print(n)      # each time the for loop runs, print the value of i
}
#4) Make a for loop that loops over the numbers 10 to 20, and prints the square of each.#
for(a in 10:20){  # create a for loop that runs 5 times (1 to 5)
  print(a^2)      # each time the for loop runs, print the value of i
}
# Make your own for loop that runs 5 times and each time it runs takes a starting number of your choice and divides it by 13, before overwriting the original starting value. It should print the new value each time.#
for(i in 3:7){  # create a for loop that runs 5 times (1 to 5)
  i <- i/13      # each time the for loop runs, print the value of i
  print(i)
}
x <- 111 # this can be any number of your choosing
for (i in 1:5) {
  x <- x / 13
  print(x)
}

x <- 21 # this can be any number of your choosing
for (i in 1:5) {
  x <- x / 13
  print(x)
}
#this shows how to overwrite#
a <- 3
a <- a + 2
a
#6) Make your own for loop that takes two numeric scalars (your choice), adds them together, and prints their summed value to the power of your iterator (2 in the first loop, 3 in the second, etc. up to 6).#
x <- 111 # this can be any number of your choosing
y <- 21 # this can be any number of your choosing
for (i in 2:6) {
  z <- x + y
  print(z ^ i)
}

#advanced looping#
#looping over non integer vectors#
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(word in shrek_quote){
  print(toupper(word))  
}
#In this case the iterator is now word, rather than the usual i.#
#Try running the following version of the code where word has been changed to donkey and a numeric vector is used instead of a character vector to the same effect.#
for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}
donkey
toupper(shrek_quote[donkey])
1:length(shrek_quote)
(shrek_quote)
shrek_quote[donkey]

#Write your own for loop that takes a character vector of c('WHAT', 'ARE', 'YOU', 'DOING', 'IN', 'MY', 'SWAMP') and prints it word by word in lower case.#
tolower(shrek_quote)
#Change the for loop you just created to use an integer vector to loop with, rather than the character vector. If you used an integer vector to begin with, try looping over the character vector instead.#
shrek_quote <- c('WHAT', 'ARE', 'YOU', 'DOING', 'IN', 'MY', 'SWAMP')
for(word in 1:length(shrek_quote)){
  print(tolower(shrek_quote[word]))
}
#saving outputs 3.2#
#using output vector#
output <- vector() # creates an empty vector that we can fill with values
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i])
}
print(output)
#nchar gives 6#
#Create a for loop that takes a vector named words with the elements 'buzz' 'cross' 'broads' 'fore' and '', adds the word 'word' to each of them, and saves them as a new vector called wordwords. Google is your friend… Your outputted vector should be like so:#
output <- vector() # creates an empty vector that we can fill with values
input <- c('buzzword', 'crossword', 'broadsword', 'foreword', 'word')
for(i in 1:length(input)){
  output[i] <- nchar(input[i])
}
print(output)
#using gsub function???#
c('buzzword', 'crossword', 'broadsword', 'foreword', 'word')
words <- c('buzz', 'cross', 'broads', 'fore', '')
wordwords <- vector()
for(i in 1:length(words)){
  wordwords[i] <- paste(words[i], 'word', sep = '')
}
print(words)

words <- c('buzz', 'cross', 'broads', 'fore', '')
wordwords <- vector()
wordwords <- paste(words, 'word', sep = '')

words <- c('buzz', 'cross', 'broads', 'fore', '')
output <- gsub(pattern='$', replacement = 'word', x = words)
print(output)

#conditional statements task 4#
#using if#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i > 5){
    print(i)
  }
}
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  }
}
#How does the conditional statement in the above code work?#
as 1 is the subject and so is 5 makes them the main number on the statement 

#What does the paste() function do in the above code?#
paste(i, ' is less than five and an integer.', sep = '')

#Create your own if statement inside a loop over the numeric vector nums below. Be creative with what your conditional statement is, but make sure you have an appropriate print output like the example above!#
nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in numbers){
  if(i < 12 & i %% 2 == 0){
    print(paste(i, ' is more than two and an even number.', sep = ''))
  }
}

#4.2 using else#
#checking if its false#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an integer (or both!).', sep = ''))
  }
}
#Update your for loop with an if() statement to also contain an else statement (of your choice again!).#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an odd number.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an odd number (or both!).', sep = ''))
  }
}

#4.3 using else if#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else if(i < 5 & i %% 1 != 0){
    print(paste(i, ' is not an integer.', sep = ''))
  } else if(i >= 5 & i %% 1 == 0){
    print(paste(i, ' is not less than five.', sep = ''))
  } else {
    print(paste(i, ' is not less than five and is not an integer.', sep = ''))
  }
}
#Commit your changes and then update the loop you made for the previous sections (on else statements) so that it also contains at least one else if() statement.#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else if(i < 5 & i %% 1 != 0){
    print(paste(i, ' is less than five and an odd number.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an odd number (or both!).', sep = ''))
  }
}

#questions task 5#
#7) Make a for loop that iterates over the numeric vector c(1,1,3,5,8,13,21) and prints the square root of each of the numbers.#
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i > 5){
    print(sqrt(i))
  }
}
for (i in c(1,1,3,5,8,13,21)) {
  print(sqrt(i))
}
#8) Make a for loop that calculates the next 10 values in the Fibonacci sequence after the first two values of 1 and 1. Save the output as fib_vec.#
output <- vector()
input <- c('2', '3', '5', '8', '13','21','34', '55', '89','144')
for(fib_vec in 1:length(input)){
  output[fib_vec] <- nchar(input[i])
}
print(output)


starting_nums <- c(1,1)
for(i in j){
  x <- 1+1
}

fib_vec <- c(1,1)
for (i in c(3:12)) {
  fib_vec[i] <- fib_vec[i - 2] + fib_vec[i - 1] 
}
print(fib_vec)

#print out the few fibonacci sequence#
a <- 0
b <- 1
print(a)
while (b < 50) {
  print(b)
  temp <- a + b
  a <- b
  b <- temp
}

#the actual answer#
fib_vec <- c(1,1)
for (i in c(3:12)) {
  fib_vec[i] <- fib_vec[i - 2] + fib_vec[i - 1] 
}

#9) Create a vector of a quote from your favourite film (each word should be a single element). Loop over the words and only print the words that are 4 or 5 characters long.#
home_quote <- c('some', 'people', 'cant', 'believe', 'in', 'themselves', 'until', 'someone', 'else', 'believes', 'in', 'themselves', 'first')
for(word in home_quote){
  letters <- nchar(word)
  if(letters == 4){
    print(word)
  }else if(letters == 5){
    print(word)
  }
}
#another way of getting 4 and 5 togther in same line#
home_quote <- c('some', 'people', 'cant', 'believe', 'in', 'themselves', 'until', 'someone', 'else', 'believes', 'in', 'themselves', 'first')
for(word in home_quote){
  letters <- nchar(word)
  if(letters == 4 | letters == 5){
    print(word)
  }
}
#10) Take your film quote and this time print all words 4, 5 or 6 characters long, print 'no' instead when the words are < 4 characters long and print 'harry potter' if they are more than 6 characters long#
home_quote <- c('some', 'people', 'cant', 'believe', 'in', 'themselves', 'until', 'someone', 'else', 'believes', 'in', 'themselves', 'first')
for(word in home_quote){
  letters <- nchar(word)
  if(letters == 4 | letters == 5 | letters == 6){
    print('no')
  }else if(letters <4){
    print('harry potter')
  }
}
#11) Commit your changes, then update the above for loop to save all the printed outputs into a new vector called garbled_film_quote,#
garbled_film_quote <- c('some', 'people', 'cant', 'believe', 'in', 'themselves', 'until', 'someone', 'else', 'believes', 'in', 'themselves', 'first')
for(word in garbled_film_quote){
  letters <- nchar(word)
  if(letters == 4 | letters == 5 | letters == 6){
    print('no')
  }else if(letters <4){
    print('harry potter')
  }
}
#12) Make a for loop that takes 10 surnames and creates a vector of the first letter of each of those names called initial_vec.#
surnames <- c('Pappachan', 'Brindle', 'Rossiter', 'Awulu', 'Chang', 'Yang', 'Martin', 'Franz', 'Busch-Nentwich', 'Redmond') 
initial_vec <- vector()
for (i in 1:length(surnames)) {
  initial_vec[i] <- substr(surnames[i],1,1) 
}
print(surnames)

#challenge#
alphabet <- matrix(data = c('A','B','C','D','E','F','G','H',
                            'I','J','K','L','M','N','O','P',
                            'Q','R','T','S','U','V','W','X',
                            'Y','Z'),
                   nrow = 2)
position <- matrix(data = c('first','second','third',
                            'fourth','fifth','sixth',
                            'seventh','eighth','ninth',
                            'tenth','eleventh','twelfth',
                            'thirteenth','fourteenth','fifteenth',
                            'sixteenth','seventeenth','eighteenth',
                            'nineteenth','twentieth','twenty first',
                            'twenty second','twenty third','twenty fourth',
                            'twenty fifth','twenty sixth'),
                   nrow = 2)

for(i in 1:5) { 
  for (j in 1:2){ # create a for loop that runs 5 times (1 to 5)
  print(paste(c(alphabet[j,i], 'is the', position[j,i], 'the letter of the alphabet.'), collapse = ''))
    }
}

#mcq questions#
i<-1
for(t in 1:4) {
  i<-3*i-1
}
print(i)


output <- vector() 
input <- c('dog', 'cat', 'bird', 'mouse', 'snake')
for(i in 1:length(input)){
  output[i+2] <- input[i]
}
print(output)
