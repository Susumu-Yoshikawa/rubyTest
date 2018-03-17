module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  
  # logメソッドをミックスインとしてもモジュールの特異メソッドとしても使えるようにする
  # (module_function は対象メソッドの定義よりも下で呼び出す)
  module_function :log
end

Loggable.log('Hello.')

class Product
  include Loggable
  
  def title
    log 'title is called'
    'A Great movie'
  end
end

product = Product.new
p product.title


