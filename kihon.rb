#ruby ファイル名で実行
puts "Hello"

# 変数展開
name = "佐藤"
puts "Hello #{name}さん"

# rubyのif文(endが必要)
if name == "佐藤"
    puts "佐藤さんです"
elsif name == "鈴木"
    puts "鈴木さんです"
else
    puts "佐藤さんではありません"
end