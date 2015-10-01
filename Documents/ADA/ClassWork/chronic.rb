require 'chronic'

# Chronic is good for sanitizing user imputs
puts "Excuse me, do you know what time it is?"
asked_time1 = gets.chomp
asked_time2 = gets.chomp
asked_time3 = gets.chomp
puts "You said #{asked_time1}, which means #{Chronic.parse(asked_time1)}"
puts "You said #{asked_time2}, which means #{Chronic.parse(asked_time2)}"
puts "You said #{asked_time3}, which means #{Chronic.parse(asked_time3)}"

# You can use it to calculate the differences bettween times
puts "Hey what time are we having lunch next?"
asked_time = gets.chomp
sec_from_now = (Chronic.parse(asked_time) - Time.now)
min_from_now = sec_from_now/60
hr_from_now = min_from_now/60
days_from_now = hr_from_now/24
hrs = 24 * (days_from_now - days_from_now.to_i)
puts "So I'll see you #{days_from_now.to_i} days and #{hrs.to_i} hours from now!"

# Returns the current age of as many people as you want
puts "When were all of you born? Press enter when done."

birthdays = []
user_birthdays = gets.chomp

while user_birthdays != ""
    birthdays << user_birthdays.downcase
    user_birthdays = gets.chomp
end

puts "Ages: "

birthdays.each do |birthdate|
    age = (Chronic.parse('today') - Chronic.parse(birthdate)) / (60 * 60 * 24 * 365)
    puts age.to_i
end
