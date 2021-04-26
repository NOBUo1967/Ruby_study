baseball_team = {
  baystars: 4,
  tigers: 18,
  dragons: 8
}

puts 'あなたの行いたい動作を教えて下さい'
puts "(create), (read), (update), (delete)"

choose = gets.chomp

#create,read,update,deleteそれぞれの処理を条件分岐する。

case choose
  when 'create'
    puts '追加したい球団を入力してください'
    team = gets.chomp
    if baseball_team[team.to_sym].nil?
      puts '勝数を入力してください'
      number_of_win = gets.chomp
      baseball_team[team.to_sym] = number_of_win.to_i
      puts "#{team}と勝数の追加が完了しました"
    else
      puts "#{team}はすでに登録されています"
    end

  when 'update'
    puts '勝数を更新したい球団を選んでください'
    team = gets.chomp
    if baseball_team[team.to_sym].nil?
      puts "#{team}は登録されていません"
    else
      puts '勝数を入力してください'
      number_of_win = gets.chomp
      baseball_team[team.to_sym] = number_of_win.to_i
      puts "#{team}の勝数が#{number_of_win}に更新されました"
    end

  when 'delete'
    puts '削除したい球団を選んでください'
    team = gets.chomp
    if baseball_team[team.to_sym].nil?
      puts "#{team}は登録されていません"
    else
      baseball_team.delete(team.to_sym)
      puts "#{team}を削除しました"
    end

end #case文のend

puts baseball_team
