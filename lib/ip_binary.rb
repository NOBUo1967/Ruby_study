def change_binary(arg1, arg2, arg3, arg4)
  arg1.to_s(2)
  arg2.to_s(2)
  arg3.to_s(2)
  arg4.to_s(2)
end

puts change_binary(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i, ARGV[3].to_i)