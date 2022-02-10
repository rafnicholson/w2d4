def count_down(num)
  if num == 0
    p "Houston, we have lift-off!"
    return;
  end

  p num
  count_down(num - 1)
end

# count_down(10)

def factorial(n)
    return 1 if n == 1
    
    n * factorial(n - 1); 
   
end 

p factorial(3) 

def fib(n)
    return 1 if n == 1 || n == 2
    fib(n - 1) + fib(n - 2)
end 

p fib(8) 

true || 42          # => true
42 || true          # => 42
false || 42         # => 42
42 || false         # => 42
false || "hello"    # => "hello"
nil || "hello"      # => "hello"
"hi" || "hello"     # => "hi"
0 || true           # => 0
false || nil        # => nil

# def greet(person = nil)
#     if person.nil?
#         person = "you"
#     end 
#     p "Hey " + person
# end 
# greet("Brian")
# greet 

def greet(person = nil)
  person = person || "you" 
  p "Hey " + person 
end 
greet("Raf")
greet 

def greet(person = nil)
    person ||= "you"
    p "Hey " + person
end

greet("Brian")  # => "Hey Brian"
greet           # => "Hey you"

class Restaurant
    attr_accessor :name, :chefs, :menu

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
    end

    def menu
        @menu ||= ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
    end
end

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])

p five_star_restaurant
#<Restaurant:0x00007f90b3922368 
# @name="Appetizer Academy",
# @chefs=["Marta", "Jon", "Soon-Mi"]
#>

p five_star_restaurant.menu
#["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]

p five_star_restaurant
#<Restaurant:0x00007f90b3922368
# @name="Appetizer Academy", 
# @chefs=["Marta", "Jon", "Soon-Mi"],
# @menu=["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
#>