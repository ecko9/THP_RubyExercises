puts "Bonjour, quelle est votre année de naissance ?"
print "Année de Naissance > "
user_birth = gets.chomp.to_i
user_age = 2021 - user_birth
user_age_2017 = user_age - 4
puts "Vous avez #{user_age} ans et en 2017 vous aviez #{user_age_2017} ans"