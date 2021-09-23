def ftoc(far) 
  c = (far.to_f - 32) * 5 / 9
  return c
end

def ctof(cel)
  f = cel.to_f * 9 / 5 + 32
  return f
end