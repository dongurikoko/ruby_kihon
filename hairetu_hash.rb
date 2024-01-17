# each文の書き方
names = ["awk", "Perl", "Python", "Ruby"]
names.each do |name|
    puts name
end

# ハッシュ {キー1 => 値1, キー2 => 値2}
user = {"name" => "SUZUKI","age" => 21}
# シンボルを用いて定義した場合
user_symbol = {:name => "SUZUKI",:age => 21} 
# 上のようにシンボルを用いるときは name: のように省略した書き方ができる(基本これ使う)
user_symbol2 = {name: "SUZUKI",age:21}

# それぞれの出力方法
puts user["name"] # puts[name]はエラー
puts user_symbol[:name]
puts user_symbol2[:name]

#　要素の追加
user["gender"] = "male"
puts user

# rubyでは nil を使う
# nilを使ったif文
user = {name:"SUZUKI",age:21}

if user[:age]  #ageが存在するとき
    puts "#{user[:name]}さんは#{user[:age]}歳です"
else
    puts "年齢は秘密です"
end

# 要素がハッシュになっている配列
users = [
    {name:"suzuki",age:21},
    {name:"sato",age:20}
]

puts users[0][:name]  # suzuki

users.each do |user|
    puts user[:name]
end
