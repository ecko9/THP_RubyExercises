def dictionnary
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  return dictionnary
end


def scan(mot, phrase)
  compteur = 0
  phrase.length.times do |i|
    x = i + mot.length
    puts i
    puts mot
    if mot == phrase[i, x]
      compteur += 1
    end
  end
  return compteur
end

def word_counter(corpus, dictionnaire)
  array_compteur = []
  array_dico = []
  dictionnaire.each do |i|
    compteur = scan(i.to_s, corpus)
    if compteur > 0
      array_compteur.push(compteur)
      array_dico.push(i)
    end
  end
  hash = Hash[array_dico.zip(array_compteur)]
  return hash
end
