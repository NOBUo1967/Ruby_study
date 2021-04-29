require 'pg'

begin
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
  q = 'SELECT * FROM team'
  res = conn.exec(q)
  res.each do |r|
    puts r
  end
rescue => ex
  print(ex.class, '->', ex.message)
rescue => ex
  print(ex.class, '->', ex.message)
ensure
  conn.close if conn
end
