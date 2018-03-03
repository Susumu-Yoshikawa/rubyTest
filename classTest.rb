class User
    attr_accessor :name, :age
    #attr_reader :name
    #attr_writer :name
    def initialize(name, age)
      #puts "name: #{name}, age: #{age}"
      @name = name
      @age = age
    end
    
    #インスタンスメソッド
    def hello
      #shuffled_name = @name.chars.shuffle.join
      puts "Hello, I am #{@name}"
    end
    
    # def name
    #   p @name
    # end
    # def name=(value)
    #   @name = value
    # end
    
    #クラスメソッド
    def self.create_users(names)
      names.map do |name|
        User.new(name,nil)
      end
    end
    
end

user = User.new('Alice', 20)
user.hello
#user.name = 'Bob'
puts user.name
puts user.age

bob = User.new('Bob', 30)
bob.hello
puts bob.name
puts bob.age

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user1|
 user1.hello
end