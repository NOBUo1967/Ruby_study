def hoge(message, time = Time.now)
  puts "time: #{time}, message: #{message}"
end

hoge(ARGV[0])
