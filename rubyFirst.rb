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