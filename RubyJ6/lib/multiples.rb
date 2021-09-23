def is_multiple_of_3_or_5(current_number)
  if (current_number.to_i % 3) == 0
    return true
  elsif (current_number.to_i % 5) == 0
    return true
  else
    return false
  end
end


def sum_of_3_or_5_multiples(final_number)
  number_array_string = []
  number_array = []
  if final_number.class == Integer && final_number > 3
  (final_number - 1).times do |i|
    if is_multiple_of_3_or_5(i+1)
      number_array_string.push((i+1).to_s)
      number_array.push((i+1).to_i)
    else
    end
  end
  number_string = number_array_string.join(" ")
  sum_array = number_array.sum
  return sum_array
elsif final_number.class == Integer && final_number >= 0 && final_number <= 3
  return 0
else
  return "Yo ! Je ne prends que les entiers naturels. TG"
end
end
