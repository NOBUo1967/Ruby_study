require 'uri'
require 'net/http'
require 'json'

# puts '=============================='
# puts '検索したい地域の都市コードを入力してください'
# puts '例) 横浜であれば 140010'
# puts '=============================='
# area = gets.to_i

url = "https://weather.tsukumijima.net/api/forecast/city/140010"



uri = URI.parse(url)
res = Net::HTTP.get(uri)
res = JSON.parse(res)

puts "#{res['title']}\n天気：#{res['forecasts'][1]['telop']}"
