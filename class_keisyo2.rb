class User
    def hello
      'Hello'
    end
    
    private
    def goodbye
      'Bye'
    end
end

user = User.new
p user.hello
#p user.goodbye

class User2
  attr_reader :name
  
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  
  # User2同士の体重(weight)比較
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
  
  protected
  def weight
    @weight
  end
  
end

alice = User2.new('Alice', 50)
bob = User2.new('Bob', 60)

p alice.heavier_than?(bob)
p bob.heavier_than?(alice)


