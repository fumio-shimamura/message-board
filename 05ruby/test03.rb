class Shop
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def print_details
    puts "shop: #{name}"
  end
end

module AnimalModule
  attr_accessor :animals

  def print_animals
    puts "animals: #{animals.join(',')}"
  end
end

module CafeModule
  attr_accessor :menus

  def print_menus
    puts "menus: #{menus.join(',')}"
  end
end

class AnimalCafe < Shop
  include AnimalModule
  include CafeModule

  def print_details
    super
    print_animals
    print_menus
  end
end

class PetShop < Shop
  attr_accessor :animals

  def print_details
    super
    print_animals
  end

  def print_animals
    puts "animals: #{animals.join(',')}"
  end
end

=begin
shop1 = Shop.new('Aoki')
shop1.print_details
#shop1.print_animals
petshop1 = PetShop.new('Kato')
petshop1.animals = ['dog', 'cat', 'rabbit']
petshop1.print_details
#petshop1.print_animals
=end

anicafe1 = AnimalCafe.new('Sarry')
anicafe1.animals = ['dog', 'cat', 'rabbit']
anicafe1.menus = ['cafee', 'tea']
anicafe1.print_details
