# solution for no. 1

foo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

foo.each { |n| puts "#{n}"}

# solution for no. 2

h = {:a => 1, :b => 2, :c => 3, :d => 4}

puts h[:b]

h[:e] = 5

puts h

# solution for no. 3

contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]
            
contacts = {"John Cruz" => {:email => contact_data[0][0], :address => contact_data[0][1], :phone => contact_data[0][2] }, "Avion School" => {:email => contact_data[1][0], :address => contact_data[1][1], :phone => contact_data[1][2]}}

puts contacts

# solution for no. 4

age = 23

puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

# better answer

puts "How old are you?"
age = gets.chomp.to_i
                             
(10..40)step(10).each do |n|
puts "In #{n} years you will be:"
puts "#{age +n}"
end
