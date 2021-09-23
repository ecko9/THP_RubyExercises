def add(x,y)
  res1 = x + y
  return res1
end

def subtract(x,y)
  res2 = x - y
  return res2
end

def sum(array)
  res3 = array.sum
  return res3
end

def multiply(x,y)
  res4 = x * y
  return res4
end

def apower(x,y)
  res5 = x ** y
  return res5
end

def factorial(x)
  res6 = (1..x).inject(:*) || 1 
  return res6 
end