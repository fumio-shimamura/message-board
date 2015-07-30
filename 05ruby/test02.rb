def hello(name)
  puts "Hello, #{name}!"
end

hello("shimamura")

def tax(price, percent)
  puts price * percent / 100.0
end

tax 100, 8

class Shop
  @@count = 0
  #getter, setterは自動で作成される
  attr_accessor :name1, :description, :latitude, :longitude

  def initialize(name)
    @name = name         #.name 形式では値を参照できない
    self.name1 = name
    @@count += 1
    print_count
  end

  def self.getcount
  	@@count
  end

  def getname
  	@name
  end

 #private  #クラスの中からしか呼べない
  protected

  def print_count
    puts "count: #{@@count}"
  end
end

class ShopOwner < Shop
  def print
  	puts print_count
  end
 end

shop1 = Shop.new('Kate')
puts shop1.getname
#puts shop1.name
puts shop1.name1
shop1.latitude = 34.567
puts shop1.latitude

shop2 = Shop.new('Marry')
puts Shop.getcount
#puts shop2.print_count

shopowner1 = ShopOwner.new('LaLa')
#puts shopowner1.name
puts shopowner1.print
#puts shopowner1.print_count
