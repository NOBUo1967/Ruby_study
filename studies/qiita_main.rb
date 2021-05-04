require_relative('./qiita_class')

qiita = Qiita.new('Ruby')
articles = qiita.search()
puts articles