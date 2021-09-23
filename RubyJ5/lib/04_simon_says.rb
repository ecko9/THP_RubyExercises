def echo(chaine)
 return chaine
end

def shout(chaine)
  return chaine.upcase
end

def repeat(chaine, *option1)
  chainon = " " + chaine
  res = chaine + chainon
  if option1[0] == nil
    res = res
  elsif option1[0] > 1
    res = res + (chainon * (option1[0]-2))
  else
    res = res
  end
  return res
end


def start_of_word(chaine, opt)
  chaine = chaine[0, opt]
  return chaine
end

def first_word(chaine)
  a = chaine.index(' ')
  chaine = chaine[0, a]
  return chaine
end

def titleize(chaine)
  a = chaine.split
  a[0][0] = a[0][0].upcase
  bad_word1 = "and"
  bad_word2 = "the"
  a.each do |i|
    if i == bad_word1
    elsif i == bad_word2
    else
      i[0] = i[0].upcase
    end
  end
  chaine = a.join(" ")
  return chaine
end
