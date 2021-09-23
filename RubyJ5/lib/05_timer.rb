def time_string(nb)
  min = 0
  heure = 0
  if nb > 60
    sec = nb.to_i % 60
    min = nb.to_i / 60
    if min > 60
      heure = min.to_i / 60
      min = min.to_i % 60
    end
  else
    sec = nb
  end
 return "#{'%02d' % heure}:#{'%02d' % min}:#{'%02d' % sec}"
end
