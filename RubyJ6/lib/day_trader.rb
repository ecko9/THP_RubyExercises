def meilleurs_jours(array, index)
  benef_max = 0
  compteur1 = 0
  index_mjv = index.to_i
  valeur = array[index].to_i
  n_array = array.select.with_index { |nb, idx| idx >= index }
  n_array.each do |i|
    if (i - valeur) > benef_max
      benef_max = i - valeur
      index_mjv = index + compteur1
    end
    compteur1 += 1
  end
  return index_mjv
end


def benef_max(array, index)
  benef_max = 0
  valeur = array[index].to_i
  n_array = array.select.with_index { |nb, idx| idx >= index }
  n_array.each do |i|
    if (i - valeur) > benef_max
      benef_max = i - valeur
    end
  end
  return benef_max
end

def day_trader(array)
  i2 = 0
  best_i2 = 0
  benef = 0
  array.each do |i|
    benef_i2 = benef_max(array, i2)
    if benef_i2 > benef
      benef = benef_i2
      best_i2 = i2
    end
    i2 += 1
  end
  index_mjv = meilleurs_jours(array, best_i2)
  return [(best_i2 + 1), (index_mjv + 1)]
end
