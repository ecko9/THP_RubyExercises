
def get_first_name
  puts "Bonjour, veuillez saisir votre prénom"
  print "> "
  first_name = gets.chomp
  return first_name
end

#

def say_hello(first_name)
  puts "Bonjour #{first_name}"
end


#
#
#

def perform 
  say_hello(get_first_name)
end

perform