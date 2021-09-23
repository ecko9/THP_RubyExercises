
def who_is_bigger(a,b,c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  else
    hash = [a, b, c]
    res = hash.max_by {|v| v}
    if hash.index(res) == 0
      return "a is bigger"
    end
    if hash.index(res) == 1
      return "b is bigger"
    end
    if hash.index(res) == 2
      return "c is bigger"
    end      
  end
end

def reverse_upcase_noLTA(chaine)
  return chaine.reverse.upcase.delete "ltaLTA"
end

def array_42(array)
  if array.find {|x| x == 42}
    return true
  else 
    return false
  end
end

def magic_array(array)
  array.flatten!
  array.compact!
  array.uniq!
  array.delete_if {|v| v % 3 == 0}
  array.sort_by! {|v| v}
  array.map! {|v| v*2}
  return array
end
