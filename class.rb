require "date"

# 設計図のことをクラス、「もの」のことをインスタンス
class Menu
    attr_accessor  :name  #「:name」をインスタンス変数という
    attr_accessor  :price

    def initialize(name:,price:) #インスタンス生成時に自動で呼び出される
        puts "メニューが生成されました"
        self.name = name
        self.price = price

    end

    def Menu.is_discount_day? #クラスメソッド：def クラス名.メソッド名
        today = Date.today
        return today.sunday?
    end


    def show_name  # インスタンスメソッド
        puts "私は#{self.name},#{self.price}です" #selfには呼び出したインスタンス自身が代入されている

        if !Menu.is_discount_day? # クラスメソッドはインスタンスメソッド内でも呼び出せる
            puts "やっぱり#{self.price - 100}です"
        end

    end

end

# インスタンスの生成
menu1 = Menu.new(name:"ピザ",price:800)
menu1.show_name

#　クラスメソッド呼び出し
puts Menu.is_discount_day?