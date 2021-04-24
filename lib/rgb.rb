require "pry"

def to_hex(r, g, b)
  [r, g, b].reduce('#') do |hex, color|
    hex + color.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  binding.pry
  hex.scan(/\w\w/).map(&:hex)
end

to_ints(ARGV[0])