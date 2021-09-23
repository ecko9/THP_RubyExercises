

def caesar_cipher(string, key)
  if key > 0 && key < 27
    new_string = ""
    (string.length).times do |i|
      ascii_letter = string[i].ord.to_i

      if ascii_letter > 64 && ascii_letter < 91
        new_ascii = ascii_letter + key.to_i
        if new_ascii > 90
          new_ascii -= 26
        end
        new_string[i] = new_ascii.chr
      elsif ascii_letter > 96 && ascii_letter < 123
        new_ascii = ascii_letter + key.to_i
        if new_ascii > 122
          new_ascii -= 26
        end
        new_string[i] = new_ascii.chr
      else
        new_ascii = ascii_letter
        new_string[i] = new_ascii.chr
      end
    end
    return new_string
  else
    return "La clé doit etre comprise entre 1 et 26" 
  end
end
