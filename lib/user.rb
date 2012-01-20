class User
  @@list = []
  
  def self.list
    @@list
  end
  
  def self.authenticate(username, password)
    @@list.any? do |user|
      user.username == username && user.password == password
    end
  end
  
  attr_accessor :username, :password
  
  def initialize(username, password)
    @username = username
    @password = password
  end
end