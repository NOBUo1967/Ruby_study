def number_greater_than_ten?(num)
  num > 10 ? '10より大きい' : '10以下です'
end

puts number_greater_than_ten?(ARGV[0].to_i)
