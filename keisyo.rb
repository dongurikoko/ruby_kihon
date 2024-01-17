require "./class" #class.rbの内容を読み込む

# コンソールから入力を受け取る
#name = gets.chomp
#number = gets.chomp.to_i 数値に変換

# 継承:あるクラスを元にして新たなクラスをつくること
class Food < Menu #class 新しいクラス名 < 元となるクラス名
    attr_accessor :calorie

    def initialize(name:,price:,calorie:) #オーバーライド(親クラスのメソッドを上書き)
        self.name = name
        self.price = price
        # 上は親クラスのinitializeを使って以下のようにも書ける
        super(name:name,price:price) #super : 親クラスの同名のメソッドを呼び出す
        self.calorie = calorie
    end
end