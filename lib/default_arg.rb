def hogefuga(arg = 'hoge')
  if arg == 'hoge'
    'hogehoge'
  else
    'fugafuga'
  end
end

puts hogefuga(ARGV[0])
