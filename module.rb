module Greeter
	def hello
		'hello'
	end
end

# インスタンスの作成不可
# greeter = Greeter.new

# 他のモジュールへの継承不可
# module SumGreeter < Greeter
# end



module Loggable
	private
	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	# モジュールをインクルード
	include Loggable
	
	def title
		log 'title:'
		'A title call'
	end
end

class User
	include Loggable
	def name
		log 'name:'
		'Alice'
	end
end

product = Product.new
p product.title

user = User.new
p user.name

class Product2
	extend Loggable
	
	def self.create_products(names)
		# extendだと特異メソッド(クラスメソッド)
		log 'create_products is call'
	end
	
end

Product2.create_products([])


