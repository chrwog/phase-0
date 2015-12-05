puts 'Hi! what\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Hi ' + first_name + ' ' + middle_name + ' ' + last_name + '. Nice to meet you.'

puts 'What\'s your favorite number?'

number = gets.chomp.to_i + 1

puts number.to_s + ' is bigger and better.'
