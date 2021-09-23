puts "Bonjour, veuillez entrez un nombre ?"
print "Nombre > "
user_number = gets.chomp.to_i

user_number.times do |i|
  puts i + 1
end

