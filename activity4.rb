class Confection
    def prepare
        puts "Baking at 350 degress for 25 minutes.."
    end
end
    

class Cupcake < Confection
    def prepare
        super
        puts "Applying frosting.."
    end
end

class BananaCake < Confection
end