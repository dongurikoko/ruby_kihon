# Dateクラス(rubyですでに用意されているクラス)
require "date"

date1 = Date.new(2014,7,31) 
puts date1 #2014-07-31
puts date1.sunday?

date2 = Date.today #クラスメソッド:クラスに対して呼び出すメソッド
puts date2

