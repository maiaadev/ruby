# solution 1

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
    if num == number
        puts "the number is in the array"
    end
end

# solution 2

number = gets.chomp.to_i

if number > 0 && number < 50
    puts "the number is between 0 and 50"
elsif number > 50 && number < 100
    puts "the number is between 51 and 100"
elsif number > 100
    puts "the number is above 100"
else
    puts "the number is either less than 0, 0, 50, 51, or 100"
end

# solution 3

while gets.chomp != "STOP" do
    puts gets.chomp
end

# solution 4

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

divisible_by_two = []

arr.each do |num|
    if num.even?
        divisible_by_two << num
    end
end

puts divisible_by_two