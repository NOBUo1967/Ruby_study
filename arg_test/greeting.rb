def greeting(country)
  if country == 'japan'
    'こんにちは'
  elsif country == 'US'
    'hello'
  elsif country == 'itary'
    'ciao'
  else
    '????'
  end
end

puts greeting(ARGV[0])
