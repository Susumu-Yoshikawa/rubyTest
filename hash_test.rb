{}.class #=> Hash

currencies = {
    'japan' => 'yen',
    'us' => 'dollar',
    'india' => 'rupee',
}
p currencies
currencies['italy'] = 'euro'
p currencies

p currencies['japan']
p currencies['brazil']

currencies.each do |key,value|
    puts "#{key} : #{value}"
end

currencies.each do |key_value|
    key = key_value[0]
    val = key_value[1]
    puts "#{key} ; #{val}"
end


symbol_currencies = {
    japan: :yen,
    us: :dollar,
    india: :rupee,
}
symbol_currencies.each do |key_value|
    key = key_value[0]
    val = key_value[1]
    puts "#{key}___#{val}"
end
p symbol_currencies[:japan]

def buy_berger(menu, drink: true, potato: true, **others)
    p "menu : #{menu}"
    p "drink: #{drink}"
    p "potato: #{potato}"
    if others.length > 0
        p others
    end
    
end
buy_berger('cheese', drink: true, potato: true)
buy_berger('fish', drink: true, potato: false)
buy_berger('fish', potato: false)
buy_berger('cheese', potato: true, drink: false, salad: true, chicken: false)


p currencies
p currencies.keys
p currencies.values

p currencies.has_key?('japan')
p currencies.has_key?(:japan)

h = {us: 'dollar', india: 'rupee'}
p h
g = { japan: 'yen', **h }
p g

p currencies.to_a
array = [["japan", "yen"], ["us", "dollar"], ["india", "rupee"], ["italy", "euro"]]
p array
p array.to_h

h = Hash.new('hello')
a = h[:aaa]
b = h['bbb']
p a
p b
p a.equal?(b)
p a.upcase!
p b