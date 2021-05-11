require 'csv' # CSVライブラリの読み込み

code = ARGV[0]
start_time = Time.now

# CSVファイルを開く 文字コードを変換
CSV.open("KEN_ALL.CSV", "r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    # 引数にの郵便番号と一致するものがあれば表示する
    # join(arg) 配列の要素を間にargを挟んで連結したstringで返す
    puts record.join(" ") if record[2] == code 
  end
end

puts Time.now - start_time