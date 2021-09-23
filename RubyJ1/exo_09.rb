puts "Bonjour, quel est votre prénom et votre nom?"
print "Prénom > "
user_prénom = gets.chomp
print "Nom > "
user_name = gets.chomp
puts "Bonjour #{user_prénom + " " + user_name}"
