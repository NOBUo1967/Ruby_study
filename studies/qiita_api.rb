require 'uri'
require 'net/http'
require 'json'

url = "https://qiita.com/api/v2/items"


# URIモジュール
# URI.parseで引数のuriをURI::schemeにしている。
# parse = 文法解析
uri = URI.parse(url)
# puts uri.class # => URI::HTTPS
# puts uri.scheme # => https
# puts uri.host # => qiita.com
# puts uri.port # => 443

# net/http HTTPを扱うライブラリ。
# Net::HTTP HTTPのクライアントのためのクラス。
# get GETリクエストを送り、ボディを文字列として返す。
# => 対象の指定方法はURIもしくは、host,path,portの指定が必要
res = Net::HTTP.get(uri)

# JSON JSONを扱うためのモジュール
# Net::HTTP.getでえられたresはStrigのためRubyで扱いやすくするためにparseする。
res = JSON.parse(res)

res.each do |item| 
  puts "#{item['title']} by #{item['user']['name']}"
end