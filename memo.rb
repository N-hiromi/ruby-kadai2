require "csv"
puts "1(新規でメモを作成する) 2(既存のメモを編集する)"
memo_type = gets.chomp.to_i
if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp.to_s
  puts "次にメモ内容を入れてください"
  puts "ctrl+dで終了です"
  text = readlines
  CSV.open(file_name + ".csv", "w") do |csv|
    csv << text
  end
elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp.to_s
  puts "メモしたい内容を入力してください"
  puts "ctrl+dで終了です"
  text = readlines
  CSV.open(file_name + ".csv", "a") do |csv|
    csv << text
  end
else
  puts "1か2を入力してください"
end