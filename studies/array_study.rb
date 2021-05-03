#配列の作成
a = []
100.times { |i| a[i] = i + 1}
# a1 = (1..100).to_a
# puts a
# puts a1

# もとの配列に変更を加えずに新しい配列を作る。
a2 = a.map { |i| i * 100 }
puts a2

# もとの配列を破壊的に変更する。
# a.map! { |i| i * 100 }
# puts a