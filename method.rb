# メソッドの書き方
def introduce1
    puts "hello"
    puts "私は~です"
end

def introduce2(name)  
    puts "hello"
    puts "私は#{name}です"
end

introduce1  #メソッドの呼び出し
introduce2("suzuki")

# 真偽値を返すメソッドは、メソッド名の末尾に「?」をつける
def negative?(number)
    return number < 0
end

#　キーワード引数
def introduce3(name:,age:,food:)
    puts "私は#{name}で#{age}歳です"
    puts "#{food}が好きです"
end

introduce3(name:"佐藤",age:21,food:"ラーメン")
