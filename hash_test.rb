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

def buy_berger(menu, drink: true, potato: true)
    p "menu : #{menu}"
    p "drink: #{drink}"
    p "potato: #{potato}"
end
buy_berger('cheese', drink: true, potato: true)
buy_berger('fish', drink: true, potato: false)
buy_berger('fish', potato: false)
buy_berger('cheese', potato: true, drink: false)
