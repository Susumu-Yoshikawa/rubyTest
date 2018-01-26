def fizz_buzz(n)
  if n % 15 == 0
    'FizzBuzz'
  elsif n % 3 == 0
    'fizz'
  elsif n % 5 ==0
    'buzz' 
  else
    n.to_s
  end
end

#for n in 1..15 do
#    puts n.to_s+':'+fizz_buzz(n)
#end

