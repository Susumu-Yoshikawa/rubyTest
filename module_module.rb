module Greeting
  def hello
    'hello'
  end
end

module Aisatsu
    include Greeting
    
    def konnichiwa
      'こんにちは'
    end
end

class User
  include Aisatsu
end

user = User.new
p user.konnichiwa
p user.hello
p User.ancestors