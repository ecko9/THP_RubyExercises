
#
def get_stage
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Saisir un nombre Impair uniquement)"
  print "> "
  etage = gets.chomp.to_i
  if etage.odd?
    return etage
  else
    puts "Saisir un nombre Impair uniquement !"
    return 0
  end
end  
#
def top_pyramid(etage)
  i2 = 1
  etage.times do |i|
    print "#{ " "*(etage-i) + "#"*i2 }\n" 
    i2 += 2
  end
end
#
def mid_pyramid(milieu)
  if milieu.even?
  print "#{ "#"*((2*milieu) - 1) }\n"
  end
end
#
def bot_pyramid(etage)
  i2 = etage - 1
  etage.times do |i|
    print "#{ " "*(i + 1) + "#"*(1 + (2*i2)) }\n"
    i2 -= 1 
  end
end
###
def full_pyramid(etage)
top_pyramid(etage/2)
mid_pyramid((etage/2)+1)
bot_pyramid(etage/2)
end

####################

def perform
stage = get_stage
full_pyramid(stage)
end
#####################
perform