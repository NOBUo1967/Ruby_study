class Baseballteam
end

baystars = Baseballteam.new

puts baystars.is_a?(Baseballteam)
puts baystars.is_a?(Object)

number = [1,3,5,8]

puts number.is_a?(Array)
puts number.is_a?(Hash)