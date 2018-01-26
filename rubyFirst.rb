#変数の定義
#名前
name01="田中"
name02="高橋"
 
#点数
a=60
b=80
 
#点数の平均を求める式
ave=(a+b)/2
 
#条件分岐　if構文
=begin
if 条件 then
  条件が成り立った時に実行する処理
else
  条件が成り立たなかった時に実行する処理
end
=end
if a>b then
  max=a
  min=b
else
  max=b
  min=a
end
 
#コンソールに引数を出力する
print(name01,"さんの点数は",a,"点\n")
print(name02,"さんの点数は",b,"点\n")
print("二人の点数の平均は",ave,"点\n")
print("最高点は",max,"点\n")
print("最低点は",min,"点\n")

#UFO演算子
puts(100 <=> 10 ) #=>1
puts(100 <=> 100) #=>0
puts(10 <=> 100 ) #=>-1

# +メソッドの実行
puts(1.+(2)) #=>3


#メソッドの定義
def foo(a, b=100)
  a + b
end

puts(foo(1,20)) #=>21
puts(foo(1)) #=>101

def foo2(a:, b:100)
  a + b
end
puts foo2(a:2,b:3) #=>5
puts foo2(a:1)     #=>101
puts foo2(b:5,a:3) #=>8

#IF式の評価
a = 0
a = if true
  1
end
p a #=>1
a = 2 if false
p a #=>1

#文字列リテラル
a = 1
p "a is #{a}"
p 'a is #{a}'

#ヒアドキュメント
query = <<SQL
  select * 
    from my_table;
SQL
p query

#文字列結合
a="ru"
p a 
p a + "BB"
b = a
p b
a << "by"
p a
p b


#シンボル
foo1 = :"foo1"
foo2 = :foo2
p foo1.class
p foo2.class