def is_vowel(letter)
  if letter == 'a'
    return true
  elsif letter == 'e'
    return true
  elsif letter == 'i'
    return true
  elsif letter == 'o'
    return true
  elsif letter == 'u'
    return true
  elsif letter == 'y'
    return true
  else
    return false
  end
end

def translate(chaine)
  a = chaine.split
  a.map! do |i|
    while is_vowel(i[0]) != true
      var = i[0]
      i[0] = ''
      i = i + var
    end
    i = i + "ay"
  end
  chaine = a.join(" ")
return chaine
end
