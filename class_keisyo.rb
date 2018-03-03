class User
end

user = User.new
p user.to_s
p user.nil?
p User.superclass
p user.methods.sort
p user.class
p user.instance_of?(User)
p user.instance_of?(String)


class Product
    attr_reader :name, :price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
    
    def to_s
      "name: #{name}, price: #{price}"
    end
end

product = Product.new('A greate movie', 1000)
p product.name
p product.price

class DVD < Product
    attr_reader :running_time
    def initialize(name, price, running_time)
        #@name =  name
        #@price = price
        super(name, price)
        @running_time = running_time
    end
    
    def to_s
      "#{super}, running_time: #{running_time}"
    end
end

dvd = DVD.new('A greate movie!!', 1200, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s
p product.to_s