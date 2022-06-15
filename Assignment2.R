# MSC2011H Special Topics Assignment 2 - Naina Jain - Due June 14, 2022
# Narcissistic Numbers

# Get user input 
input <- readline(prompt = "Please enter a three digit positive number: ")

# Check if user input is numeric
input <- as.numeric(input)

# Check if user input is narcissistic which is a number that is equal to the sum of the cube of its own digits
if (is.na(input) || input < 100 || input > 999) {
  print("Input is invalid. Program shut down.")
} else {
  # separate digits, cube, then sum
  c <- input %% 10 # gives remainder or right most digit
  b1 <- input %/% 10 # gives double digit integer (ab), still need to separate these digits
  b <- b1 %% 10 # gives middle digit
  a <- b %/% 10 # gives left most digit
  
  sum.cube <- sum(a^3,b^3,c^3)
  # check if input is equal to sum.cube
  if (input == sum.cube) {
    print("This is a narcissistic number!")
  } else {
    print("This is not a narcissistic number! :(")
    
  }
  
}
