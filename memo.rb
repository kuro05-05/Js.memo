require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
   puts "拡張子を除いたファイルを入力してください"
   file_name = gets.chomp
   
   puts "メモ内容を記載してください"
   puts "Ctrl+Dで保存します"
   memo = STDIN.read

   CSV.open("#{file_name}.csv", "w") do |csv|
   csv << "#{memo}"
end

elsif
   memo_type == 2
   puts "既存のメモを編集します。各調子を除いた既存のファイル名を入力して下さい。"
   file_name = gets.chomp

   puts "編集したい内容を入力して下さい。完了したらCtrl+Dを押して下さい"
   memo = STDIN.read

   CSV.open("#{file_name}.csv", "a") do |csv|
   csv << "#{memo}"
end

elsif
    puts "1か2を入力して下さい。"
end


