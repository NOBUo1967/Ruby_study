def test(foo)
  puts "彼は#{foo.sound}と鳴くよ"
end

class Duck
  def sound
    "ガーガー"
  end
end

class Cat
  def sound
    "にゃーにゃー"
  end
end

duck = Duck.new
test(duck)

cat = Cat.new
test(cat)