require 'pg'

begin
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')

  puts '====================================='
  puts '実行したい操作を入力してください'
  puts '(index), (create)'
  puts '====================================='
  choose = gets.chomp

  case choose
  when 'index'
    q = 'SELECT * FROM baseball_team'
    res = conn.exec(q)
    res.each do |r|
      puts r
    end

  when 'create'
    puts '追加したい球団を入力してください'
    team_name = gets.chomp
    q = "INSERT INTO baseball_team (team_name) VALUES('#{team_name}')"
    res = conn.exec(q)
    puts '登録に成功しました'
  end
rescue => ex
  puts(ex.class, ex.message)
rescue => ex
  puts(ex.class, ex.message)
ensure
  conn.close if conn
end
