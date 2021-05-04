require 'uri'
require 'net/http'
require 'json'

class Qiita
  # attr_reader :query

  def initialize(query)
    @query = query
  end

  def search
    url = "https://qiita.com/api/v2/items?query=#{@query}"
    uri = URI.parse(url)
    res = Net::HTTP.get(uri)
    res = JSON.parse(res)

    res.map do |article| 
      "#{article['title']} by #{article['user']['name']}"
    end
  end
end