begin
text = '132-456-789'
reg = Regexp.new('[1-6]+')
matches = text.scan(reg)
if matches.size > 0
    puts "Matched: #{matches.join(',')}"
else
    puts "Nothing matched."
end

    1/0
rescue => e
    puts "エラークラス：#{e.class}"
    puts "エラーメッセージ：#{e.message}"
    puts "バックトレース-------------------"
    puts e.backtrace
    puts "----------------------------------"


end


