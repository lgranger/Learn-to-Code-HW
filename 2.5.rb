# Instructions: Write a program that tells you the following:

# Hours in a year. How many hours are in a year?

def hrs_per_yr
  puts "Is this a leap year?"
  leap = gets.chomp
  x = 0
  while x = 0
    if leap = "Yes" || "yes" || "Y" || "y"
      puts "There are #{366 * 24} hours in a leap year"
      x = 1
    elsif leap = "No" || "no" || "N" || "n"
      puts "There are #{365 * 24} hours in a year"
      x = 1
    else
      leap = gets.chomp
      puts "Is this a leap year? yes or no ?"
