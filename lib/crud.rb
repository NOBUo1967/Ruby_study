baseball_team = {
  baystars: 4,
  tigars: 18,
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
    puts '勝数を入力してください'
    number_of_win = gets.chomp
    baseball_team[team.to_sym] = number_of_win.to_i
    puts "#{team}と勝数の追加が完了しました"
end #case文のend

puts baseball_team
