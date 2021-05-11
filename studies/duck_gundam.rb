def gundam(foo)
  puts "#{foo.name}は#{foo.system}systemを搭載しています"
end

class Sg
  def name
    "SUPERIOR GUNDAM"
  end

  def system
    "Alice"
  end
end

class Bd
  def name
    "Blue Desteny"
  end

  def system
    "EXAM"
  end
end

sg = Sg.new
gundam(sg)

bd = Bd.new
gundam(bd)