#solution 1

class Gadget
    attr_accessor :model, :color, :operating_system

    def initialize(model, color, operating_system)
        @model = model
        @color = color
        @operating_system = operating_system
    end
end

laptop = Gadget.new('Macbook Air', 'Gold', 'macOS')

puts laptop.model
puts laptop.color
puts laptop.operating_system

#solution 2

class Profile
    attr_accessor :full_name, :age, :work
    attr_reader :address

    def initialize(full_name, age, address, work)
        @full_name = full_name
        @age = age
        @address = address
        @work = work
    end
  end
  
  my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
  
  puts my_profile.full_name
  my_profile.full_name = 'Juan Cruz'
  
  my_profile.age = 25
  my_profile.work = 'Software Engineer'
  
  puts my_profile.full_name
  puts my_profile.age
  puts my_profile.work
  puts my_profile.address
  