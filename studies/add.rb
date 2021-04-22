def add(a, b)
  a + b
end

puts "数字を入力してください"
x, y = gets.split.map{ |num| num.to_i }

puts "#{x} + #{y} = #{add(x,y)}です。"