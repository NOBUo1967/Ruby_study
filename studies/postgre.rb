#!/usr/bin/env ruby

require 'pg'

begin
  conn = PG.connect('localhost', 5432, '', '', 'testdb', 'SHIN', '')

  puts '====================================='
  puts '実行したい操作を入力してください'
  puts '(index), (read), (create), (update), (delete)'
  puts '====================================='
  choose = gets.chomp

  case choose
  when 'index'
    q = 'SELECT * FROM baseball_team'
    res = conn.exec(q)
    res.each do |r|
      puts r
    end

  when 'read'
    puts '詳細情報を確認したい球団名を入力してください'
    team_name = gets.chomp
    q = "SELECT * FROM baseball_team WHERE team_name = '#{team_name}'"
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

  when 'update'
    puts '球団名を変更したい球団を入力してください'
    team_name_before_the_change = gets.chomp
    puts '変更後の球団名を入力してください'
    team_name_after_the_change = gets.chomp
    q = "UPDATE baseball_team SET team_name  = '#{team_name_after_the_change}' WHERE team_name = '#{team_name_before_the_change}'"
    conn.exec(q)
    puts '更新が完了しました'

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
