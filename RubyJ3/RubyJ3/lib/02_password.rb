# Inscription et saisie mot de passe
def signup
  puts "Veuillez Saisir un mot de passe :"
  print "> "
  password = gets.chomp
  return password
end

# Vérification du mot de passe
def login(user_password)
  puts "Mot de passe :"
  print "> "
  y = gets.chomp
while user_password != y
  puts "Mauvais Mot de passe, réessayer :"
  print "> "
  y = gets.chomp
end
end

#
def welcome_screen()
  puts "Authentification Réussie, Bienvenue !"
end

####################
def perform
  user_password = signup
  login(user_password)
  welcome_screen()
end

perform