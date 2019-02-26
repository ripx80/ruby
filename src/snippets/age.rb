puts "How old are you?"
age = gets.chomp.to_i
(1..4).each do |n|
#10,20,30,40
    step = n * 10
    puts "In #{step} you will be "+(age + step).to_s
end