def fizz_buzz(num)
  if num % 15 == 0
    'Fizz Buzz'
  elsif  num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num.to_s
  end
end

puts fizz_buzz(ARGV[0].to_i)