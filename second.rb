#配列
a = []
b = [10,true,"30"]
p b[0]

c = %w(hoge foo 10)
p c
p c.join()
p c.join("_")
p c.length

#可変長引数
def foo a,*b
    p b
end
foo(1,2,3)

#*演算子(JOIN)
p [1,2]*3
p [1,2,3]*"-"
p [1,2,3].join("-")

#for式
a = [2,3,4]
for i in a do
    p i
end

#ハッシュ
a = {"foo1" => 1, "foo2" => 2, "foo3"=>3}
p a["foo1"]
a["foo2"] = 20
p a
a = {foo1: 1, foo2: 2, foo3: 3}
p a["foo1"]
a[:foo2] = 20
p a

#CASE式
case 1
when 1 then
    p 1
end #=>1

case "abc"
when "abc" then
    p 1
when "abc" then
    p 2
end # => 1

a = 10
b = case a
when 1 then
    1
else
    2
end
p b #=>2

case 4
when 1,2 then; p 1
when 3...4 then; p 2
else p 3
end #=>3

#while式
i = 0
while(0..4) === i do
    p i
    i += 1
end

#until式
i = 0
until i == 5 do
    p i
    i += 1
end

p /Ruby/.class
p /Ruby/ === "I love Ruby"
p case "I love Ruby"
  when /Ruby/ then; "Ruby!!"
  when /Java/ then; "Java!!"
  end

/bb/ =~"aabbcc"
p $` # マッチ直前
p $& # マッチ
p $' # マッチ直後
