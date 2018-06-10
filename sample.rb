puts 'Start'

module Greeter
    def hello
        'hello'
    end
end

# 例外処理を組み込んで例外に対処する
begin
    greter = Greeter.new
rescue
    puts '例外が発生したが、このまま続行する'
end

puts 'End.'
