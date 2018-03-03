# 特異メソッド
# 特定のオブジェクトに紐付くメソッドの作成(クラスメソッド)

alice = 'I am alice'
bob = 'I am bob'

p alice
p bob

def alice.shuffle
  chars.shuffle.join
end

p alice.shuffle
#p bob.shuffle

class << bob
  def shuffle
    chars.shuffle.join
  end
end

p bob.shuffle