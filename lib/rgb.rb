def to_hex(r, g, b)
  [r, g, b].reduce('#') do |hex, color|
    hex + color.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r, g, b = hex.scan(/\w\w/)
  [r, g, b].map do |color|
    color.hex
  end
end