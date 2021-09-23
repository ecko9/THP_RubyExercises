# BIENVENUE ET REGLES
def init
  puts ""
  puts ""
  puts ">>>>> Bienvenue dans STAIRWAY! <<<<<"
  puts ""
  puts ""
  puts "Vous vous trouvez actuellement sur la première marche de l'escalier"
  puts "Tentez de gravir les 10 marches qui le composent"
  puts "> Le fonctionnement est simple, lancez les dés et en fonction du résultat :"
  puts ""
  puts "> 1 :  Vous redescendez d'une marche."
  puts "> 2 à 4 :  Rien ne se passe, vous restez sur votre marche."
  puts "> 5 à 6 :  Vous montez une marche."
  puts ""
  puts "Appuyez sur ENTREE pour Lancer les dés et Commencer la partie!"
  print "> "
  gets.chomp
end

# LANCEMENT DE DES
def lancer_des
  nb = rand(1..6)
  return nb
end

# RENDU VISUEL
def visual(marche)
  10.times do |i|
    
    if i == (10 - marche)
      print "8"
      puts "#{"-"*(15-i)+ "#"*(i+1)}"
    else
      puts "#{" "*(16-i)+ "#"*(i+1)}"
    end
  end
end

# TOUR DE JEU
def tour()
  marche = 1
  numero_tour = 0
  while marche != 10
    number = lancer_des()
    numero_tour += 1

    if number > 4 && number <= 6
      marche += 1
      puts ""
      puts "> #{number} : Félicitation ! Vous êtes maintenant sur la marche : #{marche}"
      puts ""
      visual(marche)
    end  

    if number == 1 
      if marche > 1
        marche -= 1
      end
      puts ""
      puts "> #{number} : Dommage... Vous êtes maintenant sur la marche : #{marche}"
      puts ""
      visual(marche)  
    end

    if number > 1 && number < 5
      puts ""
      puts "Vous avez fait #{number} : Vous restez donc à votre place (marche : #{marche})"
      puts ""
      visual(marche)
    end

    if marche == 10
      puts "FELICITATION ! Vous avez atteint la dernière marche, vous êtes un PGM"
      visual(marche)
    else  
    puts "Appuyez sur ENTREE pour Lancer les dés et continuer la partie!"
    print "> "
    gets.chomp
    end

  end
  return numero_tour
end


# STATISTIQUES
def average_finish_time()
stats = []
100.times do
  stats.push(tour())
end
end


############
def perform
  init()
  average_finish_time()
end

perform