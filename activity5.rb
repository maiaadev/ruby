module AdminPermission
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  
  end
  
  class User
    attr_accessor :username, :password
    attr_reader :ip_address

    def initialize(username, password, ip_address)
        @username = username
        @password = password
        @ip_address = ip_address
    end

    def change_password=(password)
        @password = password
        puts "Password has changed."
    end
  
    protected
    def login(user, ip_address)
      puts "#{user} logged in. IP address: #{ip_address}"
    end
  end
  
  
  class Admin < User
    include AdminPermission

    def admin_login
        login('Admin', @ip_address)
    end
end
  
  
  class Buyer < User
    include BuyerPermission

    def buyer_login
        login('Buyer', @ip_address)
    end
  end
  
  ## execute
  
  my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
  my_admin.admin_login
  my_admin.edit_users_profile
  
  my_admin.change_password = 'new_password'
  
  buyer = Buyer.new('juan', 'password', '127.0.0.1')
  buyer.buyer_login
  buyer.buy
  
  buyer.change_password = 'new_password'