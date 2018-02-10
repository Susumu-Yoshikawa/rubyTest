[].class #=> Array
_a = [1,2,3]
_a = ['apple', 'orange', 'melon']
_b = [1, 'apple', 2, 'orange', 3, 'melon']

_c = [[10,20,30], [40,50,60], [70,80,90]]

p _a[0]
p _a[3]

p '要素の追加'
_a << 99
p _a

p '要素の削除'
p _a.delete_at(3)
p _a

p '要素の削除（存在しない添字版）'
p _a.delete_at(3)


p '繰り返し処理'
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
    sum += n
end
p sum

# 配列から奇数値を削除
p '配列から奇数値を削除'
a = [1,2,3,1,2,3]
p a
a.delete_if do |n|
    # 戻り値が真なら削除
    n.odd? # 奇数なら真、偶数なら偽を返す
    #true
end
p a

# 偶数値の場合は10倍にして戻す
p '偶数値の場合は10倍にして戻す'
p numbers
sum_value = 0
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10 : n
    p sum_value
    sum += sum_value
end
p "合計:" + sum.to_s

sum = 0
numbers.each{ |n| sum += n }
p "合計:" + sum.to_s


# map(collect)メソッド
numbers = [1,2,3,4,5]
new_numbers = numbers.map{ |n| n * 10}
p new_numbers
p numbers

# select(find_all)メソッド
numbers = [1,2,3,4,5,6]
p numbers
even_numbers = numbers.select{|n| n.even?}
p even_numbers

# rejectメソッド
non_numbers = numbers.reject{|n| n.even?}
p non_numbers

a = Array.new(10){|n| p n}
p a

fruits = ['apple', 'orange', 'melon']
fruits.each_with_index{
    |fruit, i|
    puts "#{i} :#{fruit}"
}
new_fruits = fruits.map.with_index{
    |fruit, i|
    "#{i} :#{fruit}"
}
p new_fruits


dimensions = [
    #[縦,横]
    [10,20],
    [30,40],
    [50,60],
]
areas = []
dimensions.each do |dimension|
    length = dimension[0]
    width = dimension[1]
    areas << length * width
end
p areas

areas = []
dimensions.each do |length, width|
    areas << length * width
end
p areas