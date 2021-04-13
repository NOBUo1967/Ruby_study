def check(number)
  if number.even?
    'even'
  else
    'odd'
  end
end

puts check(ARGV[0].to_i)
