require 'rexml/document'
require 'open-uri'

url = "https://weather.tsukumijima.net/primary_area.xml" 
# http://ext.nicovideo.jp/api/getthumbinfo/sm2959233
doc = REXML::Document.new(open(url).read)

puts doc.elements['//channel/ldWeather:source/pref'].attributes