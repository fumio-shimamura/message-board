puts "Hello world!"
puts Math::PI
name = "shimamura"
puts "Hello, #{name}!"
#error
puts 'Hello, #{name}!'

name1 = 'shimamura'
puts "Hello, #{name1}!"

colors = ["red", "green", "blue"]
puts colors[2]

fruit_colors = { "apple" => "red", "orange" => "orange", "banana" => "yellow" }
puts fruit_colors["apple"]

fruit_colors2 = { apple: "red", orange: "orange", banana: "yellow" }
puts fruit_colors2[:banana]

cities = { japan: ["Tokyo", "Osaka", "Nagoya"], count: 3 }
#puts cities[:japan]

a = 10
if a > 0
    puts "aは正の数です"
end

unless a == 0
    puts "aは0ではありません"
end

if a != 0
    puts "aは0ではありません"
end

cities[:japan].each do |city|
    puts city
end

arr = []
(5..10).each do |number|
    arr.push(number)
    #puts number
end
puts arr
p arr


3.times do
    puts "spam"
end

3.times do |aaa|
    puts "hoho"
end

2.upto(4) do |n|
    puts "■" * n
end
