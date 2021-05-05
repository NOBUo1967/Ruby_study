require 'nokogiri'
require 'open-uri'

url = 'https://qiita.com/search?q=ruby'

# charsetをnilにしておく。お作法？
charset = nil
# httpのurlをファイルのように開く。fileだからブロック引数はf?
# ブロックを抜けたらファイルを閉じる。
html = open(url) do |f|
  charset = f.charset # urlから文字種別を取得
  f.read # htmlを読み込む
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//h1[@class="searchResult_itemTitle"]').each do |node|
  p node.css('a').inner_text
end
