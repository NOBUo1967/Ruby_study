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
    q = 'SELECT * FROM team'
    res = conn.exec(q)
    res.each do |r|
      puts r
    end

  when 'create'
    puts '追加したい球団を入力してください'
    team_name = gets.chomp
    puts '球団ナンバーを入力してください'
    team_no = gets.chomp
    q = "INSERT INTO team VALUES(#{team_no.to_i}, '#{team_name}')"
    res = conn.exec(q)
    puts '登録に成功しました'
  end
rescue => ex
  print(ex.class, '->', ex.message)
rescue => ex
  print(ex.class, '->', ex.message)
ensure
  conn.close if conn
end
