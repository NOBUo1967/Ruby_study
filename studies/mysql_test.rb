require 'mysql2' 
require 'dotenv'
Dotenv.load

# DBに接続
client = Mysql2::Client.new(host: "localhost", username: "root", password: ENV['MYSQL_PASSWORD'], :encoding => 'utf8', database: 'test_db')


# データを全件取得
product_results = client.query("SELECT * FROM product")

# 取得したデータを表示
product_results.each do |product_result|
  puts product_result
end