require 'pg'

begin
  puts '追加したい球団を入力してください'
  team_name = gets.chomp
  puts '球団ナンバーを入力してください'
  team_no = gets.chomp
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')
  # q = 'SELECT * FROM team'
  q = "INSERT INTO team VALUES(#{team_no.to_i}, #{team_name})"
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
