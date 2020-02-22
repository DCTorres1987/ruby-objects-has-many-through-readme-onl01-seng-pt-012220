require 'pry'
class Waiter

attr_accessor :years_experianced, :customer, :meal
attr_reader :name 

@@all = []

def initialize(name, years_experianced)
  @name = name 
  @years_experianced = years_experianced
  @@all << self 
end

def self.all
  @@all 
end

def new_meal(customer,total,tip=0)
  Meal.new(self,customer, total,tip)
end

def meals
    Meal.all.select {|m| m.waiter == self}
end

def best_tipper
  binding.pry
end

end