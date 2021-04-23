def to_hex(r, g, b)
  [r, g, b].reduce('#') do |hex, color|
    hex + color.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  inst = []
  [r, g, b].each do |color|
    inst << color.hex
  end
  inst
end

to_ints(ARGV[0])