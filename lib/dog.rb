# Add your code here
require 'pry'

class Dog 
  #setters, getters
  attr_accessor :name
  
  #class variables
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.print_all
    @@all.find{|x| puts x.name}
  end
  
  def self.clear_all
    @@all.clear
  end
end

dog1 = Dog.new("A")
dog2 = Dog.new("B")
Dog.print_all
