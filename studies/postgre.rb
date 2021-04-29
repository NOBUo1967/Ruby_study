require 'pg'

begin
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')

  puts '====================================='
  puts '実行したい操作を入力してください'
  puts '(index), (create), (delete)'
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
    conn.exec(q)
    puts '登録に成功しました'

  when 'delete'
    puts '削除したい球団の球団名を入力してください'
    team_name = gets.chomp
    q = "DELETE FROM baseball_team WHERE team_name = '#{team_name}'"
    conn.exec(q)
    puts '削除に成功しました'
  end
rescue => ex
  puts(ex.class, ex.message)
rescue => ex
  puts(ex.class, ex.message)
ensure
  conn.close if conn
end
