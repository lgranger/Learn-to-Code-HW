# Instructions: Write a program that tells you the following:

# Hours in a year. How many hours are in a year?
def hrs_per_yr
  puts "Is this a leap year?"
  leap = gets.chomp
  x = 0
  while x == 0 do
    if leap == "Yes" || leap == "yes" || leap == "Y" || leap == "y"
      puts "There are #{366 * 24} hours in a leap year"
      x = 1
    elsif leap == "No" || leap == "no" || leap == "N" || leap == "n"
      puts "There are #{365 * 24} hours in a year"
      x = 1
    else
      puts "Is this a leap year? yes or no ?"
      leap = gets.chomp
    end
  end
end

# Minutes in a decade. How many nimutes are in a decade?
def min_per_dec
    year_min = 365 * 24 * 60
    leap_min = 364 * 24 * 60
    most_leaps = year_min.to_i * 10 - leap_min * 3
    two_leaps = year_min.to_i * 10 - leap_min * 2
    least_leaps = year_min.to_i * 10 - leap_min
    puts """Since different decades can have different numbers of leap years,
    there are three possible answers to the question
    \"How many mintues are in a decade?\":
    #{most_leaps}, #{two_leaps}, & #{least_leaps}."""
  end

# Your age in seconds. How many seconds old are you?

def age_in_sec
    puts "What year were you born?"
    age_year = gets.chomp.to_i
    years_old = 2015 - age_year
    age_sec = years_old.to_i * 365 * 24 * 60 * 60
    puts "You are appoximatly #{age_sec}seconds old."
end

# Our dear author's age. If I am 1,160 million seconds old (which I am), how old am I?

def auth_age
    sec_age = 1.160 * 10 ** 9
    min_age = sec_age.to_i / 60
    hr_age = min_age.to_i / 60
    day_age = hr_age.to_i / 24
    mth_age = day_age.to_i / 30
    yr_age = day_age.to_i / 365
    puts """Our Dear Author was #{sec_age} seconds old at pubication time of \"Learn to Code\".
    This means he was #{min_age} minutes, or #{hr_age} hours old.
    He was also approximatly #{day_age} days, or #{mth_age}, or #{yr_age} years old."""
  end

puts hrs_per_yr
puts min_per_dec
puts age_in_sec
puts auth_age
