jnk_array = ["グー", "チョキ", "パー"]
atti_array = ["上", "右", "下", "左"]
puts "ジャンケンしますか"
puts "1(はい) 2(いいえ)"
play = gets.chomp.to_i
if play == 1
  while play == 1
    puts "-------------------------"
    puts "0(グー) 1(チョキ) 2(パー)"
    jnk = gets.chomp.to_i
    com = rand(3)
    puts "あなた：#{jnk_array[jnk]}"
    puts "bot：#{jnk_array[com]}"
    if jnk != 0 && jnk != 1 && jnk != 2
      puts "0, 1, 2のどれかを入れてね"
    elsif jnk == com
       puts "あいこだ!!"
    elsif com == jnk + 1 or jnk == com + 2 
      puts "ジャンケンはwin"
      puts "あっちむいて"
      puts "0(上) 1(右) 2(下) 3(左)"
      jnk_atti = gets.chomp.to_i
      com_atti = rand(4)
      puts "ほい!"
      puts "あなた：#{atti_array[jnk_atti]}"
      puts "bot：#{atti_array[com_atti]}"
      if jnk_atti != 0 && jnk_atti != 1 && jnk_atti != 2 && jnk_atti != 3
        puts "0, 1, 2, 3のどれかを入れてね"
      elsif jnk_atti == com_atti
        puts "あなたの勝ち!"
        break
      elsif jnk_atti != com_atti
        puts "残念!ジャンケンに戻る"
      end
    elsif jnk == com + 1 or com == jnk + 2
      puts "ジャンケンは負け"
      puts "あっちむいて"
      puts "0(上) 1(右) 2(下) 3(左)"
      jnk_atti = gets.chomp.to_i
      com_atti = rand(4)
      puts "ほい!"
      puts "あなた：#{atti_array[jnk_atti]}"
      puts "bot：#{atti_array[com_atti]}"
      if jnk_atti != 0 && jnk_atti != 1 && jnk_atti != 2 && jnk_atti != 3
        puts "0, 1, 2, 3のどれかを入れてね"
        break
      elsif jnk_atti == com_atti
        puts "あなたの負け!"
        break
      elsif jnk_atti != com_atti
        puts "再チャレンジ!ジャンケンに戻る"
      end
    end
  end
elsif play == 2
  puts "さようなら"
else
  puts "1か2を入力してね"
end
