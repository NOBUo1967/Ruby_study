#配列の作成
a = []
100.times { |i| a[i] = i + 1 }
# a1 = (1..100).to_a
# puts a
# puts a1

# もとの配列に変更を加えずに新しい配列を作る。
# a2 = a.map { |i| i * 100 }
# puts a2

# もとの配列を破壊的に変更する。
# a.map! { |i| i * 100 }
# puts a

# 配列から特定の条件の値を取り出して配列を作成する。
# 3の倍数でないものを削除
# a3 = a.reject { |i| i % 3 != 0 }
# puts a3
# 3の倍数を抽出
# a4 = a.select { |i| i % 3 == 0 }
# puts a4
# reject!で破壊的に変更する
# a.reject! { |i| i % 3 != 0 }
# select!も破壊的変更
# a.select! { |i| i % 3 == 0 }

# 配列の並び替え
# a.reverse

# 要素の合計
# a.sum
result = 0
a.each { |i| result += i }
puts result
