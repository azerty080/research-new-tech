# Open ruby console: cmd -> enter irb


# VARIABLE NAMES
# variable names zonder hoofdletters
#	goed: my_name
# 	slecht: myName

# werkt met hoofdletters, gewoon niet gebruiken



# single line comment

=begin
multi
line
comment
=end



# GIVE INPUT
print "vraag"
variable_name = gets.chomp
print variable_name


# PRINT VARIABLES
a = "a"

print a
print "I want this in a string, here it is: #{a}"

# can also user puts, this will display multiple variables on different lines
b = "b"
print a,b
puts a,b





# ! achter .iets verandert hele variable

# gets -> geeft input
# .chomp -> verwijderd enter op einde ingeput ding
# Met .chomp
print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

puts "Your name is #{first_name}"


# Zonder .chomp
print "What's your first name? "
first_name = gets
first_name.capitalize!

puts "Your name is #{first_name}"





# .capitalize
answer = "answer"
answer2 = answer.capitalize

print "answer prints as #{answer}"
print "answer2 = answer.capitalize prints as #{answer2}"

answer.capitalize!

print "answer.capitalize! prints as #{answer}"



# .upcase (downcase)
reply = "reply"
reply2 = reply.upcase

print "reply prints as #{reply}"
print "reply2 = reply.upcase prints as #{reply2}"

reply.upcase!

print "reply.upcase! prints as #{reply}"





# if, else and elsif
x = 1
y = 2

if x < y
	print "x smaller, y larger"
elsif x > y
	print "x larger, y smaller"
else
	print "x and y equal"
end



# unless
is_valid = true

unless is_valid
	print "It is not valid"
else
	print "It is valid"
end


wait = true
print "Starting task" unless wait






# check if equal
if x == y
	print "They are equal"
else
	print "They are not equal"
end


# check if not equal
if x != y
	print "They are not equal"
else
	print "They are equal"
end


# ook voor true en false
is_true = 1 != 3
is_false = 1 == 3

print "is_true = #{is_true} en is_false = #{is_false}"



# vergelijkingen
test_1 = 1 < 2

test_2 = 1 <= 1

test_3 = 2 > 1

test_4 = 2 >= 2




# AND
if 1 < 2 && 8 > 5
	print "both true"
end

=begin

true && true 	=> true
true && false 	=> false
false && true 	=> false
false && false 	=> false

=end




# OR
if 1 < 2 || 2 < 1
	print "only one true"
end

=begin

true || true 	=> true
true || false 	=> true
false || true 	=> true
false || false 	=> false

=end





# NOT
if !false
	print "true"
end

=begin

!true 	=> false
!false 	=> true

=end









# combined comparison operator
puts 1 <=> 2 # 0 if values are equal, 1 if first value is greater, -1 if first values is lesser


# can also be used in sort
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

puts books


# other example
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruitOne, fruitTwo| 
  fruitTwo <=> fruitOne
end







# COMBINING BOOLEAN OPERATORS
if (1 > 2 || 8 < 5) && true
	print "true"
end





# .include
test_string = "hello there"
if test_string.include? "hello"
	print "It has hello in it"
end




# .gsub (global substitution)
print "test_string before: #{test_string}"

print "test_string after: #{test_string.gsub(/e/, "o")}"








# while
i = 0

while i < 5
	puts i
	i += 1 # same as i = i + 1
end

puts i





# until
i = 0

until i > 5
	puts i
	i += 1
end

puts i





# i += 1 same as i = i + 1
# i -= 1 same as i = i - 1





# for
# ... to exclude last number
for num in 1...10
	puts num
end


# .. to include last number
for num in 1..10
	puts num
end




# loop
i = 0

loop do
	i += 1
	puts i
	break if i > 5
end


=begin

loop do
	i += 1
	puts i
	break if i > 5
end

same as

loop {
	i += 1
	puts i
	break if i > 5
}

=end



# next
i = 0

loop do
  i += 1
  next if i % 2 != 0 # doens't print if i is odd
  puts i
  break if i >= 10
end









# array
my_array = [1, 2, 3, 4, 5]





# array.push
my_array.push(6)



# array.each
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts x
end


# .times
10.times do
  print "bla "
end




# .split
text = "hello there this is a text"
words = text.split(" ")

words.each do |word|
  puts word
end




# multidimensional array
multidim_array = [[0,0,0,0],[1,1,1,1],[2,2,2,2]]

multidim_array.each do |x|
	puts x
end


strings_array = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]


puts strings_array[0][1] # prints "swiss"


# print all values from multidimensional array
strings_array.each do |arr|
  arr.each do |str|
    puts str
  end
end






# hashes
# create hash name and assign value to one key value

pets = Hash.new

pets["Max"] = "dog"


# or create one with multiple values and key values
my_hash = {
	"name" => "Niels",
	"age" => 20,
	"hungry?" => true
}


# print hashes
puts my_hash

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

my_hash.each do |x|
	puts "#{x}"
end


my_hash.each do |x, y|
	puts "#{x}: #{y}"
end


my_hash.each do |x, y|
	puts my_hash[x]
end













# methods
def welcome
	puts "Welcome everyone!"
end

# use method
welcome




# method with parameters
def square(n)
	puts n ** 2
end

square(3)





# method with return
def add(num1, num2)
  return num1 + num2
end

output = add(2, 5)

puts output





# method parameters with default values
def multiply(num1, num2=2) # sets default value of num2 to 2
	return num1 * num2
end






# if there is an error in ruby you get nil as a value
test_hash = {
	"dog" => 1,
	"cat" = 2
}

test_hash["bird"] # will give nil





# symbols (variable soort)
# strings hebben verschillende object ids, symbols niet
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id



# don't do this
# :my symbol

# do this instead
# :my_symbol

my_own_symbol = :hello_there





# converting symbol to string
:brownie.to_s



# converting string to symbol
"brownie".to_sym


# converting from string to symbol also works with .intern
"brownie".intern







# new hash symbol syntax
new_syntax = {
	key1: "nice",
	key2: "really?"
}




# symbols are faster than strings
=begin

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

=end




# .select
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select do |name, rating|
  if rating > 3
  	puts name
  end
end




# .each_key only gives the keys of the hash
movie_ratings.each_key do |k|
  puts k
end





# .each_value only gives the values of the hash
movie_ratings.each_value do |v|
  puts v
end






# case
language = "JS"

case language
when "JS"
	puts "Websites!"
when "Python"
	puts "Science!"
when "Ruby"
	puts "Web apps!"
else
	puts "I don't know!"
end








# testprogram
movies = {
  movie1: 1,
  movie2: 2
}

puts "Give input"
choice = gets.chomp

case choice
  when "add"
  	puts "Give movie"
  	title = gets.chomp.to_sym
  	
  	if movies[title] == nil
  		puts "Give rating"
  		rating = gets.chomp.to_i
  		movies[title] = rating
  		puts "#{title} was added with a rating of #{rating}"
    end
  when "update"
  	puts "Give movie"
  	title = gets.chomp.to_sym
  	
  	if movies[title] == nil
      puts "Movie doesn't exist"
    else
  		puts "Give rating"
  		rating = gets.chomp.to_i
  		movies[title] = rating
  		puts "#{title} was updated with a rating of #{rating}"
    end
  when "display"
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
  	puts "Give movie"
  	title = gets.chomp.to_sym
  	
  	if movies[title] == nil
      puts "Movie doesn't exist"
    else
  		movies.delete(title)
    end
	else
  	puts "Error!"
end






# shorter ruby code
puts "true" if true

puts true ? "True" : "False"



puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end






# don't need return
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(3)



def divided_by_two(n)
  n / 2
end

puts divided_by_two(10)




# ||=
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby" # ||= value already assigned
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby" # = value overrides ||= value
puts favorite_book





# .upto
5.upto(10) do |num|
	puts num
end



"L".upto("P") do |letter|
  puts letter
end





# respond_to?
age = 26

puts age.respond_to?(:next)
puts age.next




# <<
alphabet = ["a", "b", "c"]
alphabet.push("d")
puts alphabet

caption = "A giraffe surrounded by "
caption += "weezards!"
puts caption

# same as

alphabet = ["a", "b", "c"]
alphabet<<("d")
puts alphabet

caption = "A giraffe surrounded by "
caption << "weezards!"
puts caption







# .collect
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect do |x|
  x * 2
end

puts doubled_fibs
# .collect is the same as .each but puts the array in a new variable







# yield
# when code gets to yield, it executes the code in the block between {} or do end
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" } # this code block






def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Niels") { |n| puts "My name is #{n}." }







def double(n)
  yield(n)
end

double(2) { |n| puts n*2 }





# Proc
# use proc as parameter for method with &proc_name
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)
print ints





group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new { |height| height >= 4 }

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3






def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)






ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |x| x < 100 }

puts ages.select(&under_100)




# calling proc
hi = Proc.new { puts "Hello!" }

hi.call






# lambda
# lambda { puts "Hello!" }
# same as
# Proc.new { puts "Hello!" }

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)
print symbols





crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |x,y| y<"M"}

a_to_m = crew.select(&first_half)

puts a_to_m






# .is_a?
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

puts symbols




odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |x| x.is_a? Integer }

puts ints







# proc vs lambda
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda








# CLASSES
# example
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
  
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description




# global variable
# use $variable_name
# can be used globally
class MyClass
 $my_variable = "Hello!"
end
puts $my_variable



# instance variable
# use @variable_name
# can only be used in instances of classes
class Person
  def initialize(name, age, profession) # this is an instance
    @name = name
    @age = age
    @profession = profession
  end
end




# class variable
# use @@variable_name
# can be used in entire class
class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0

  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end

  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"




# Class inheritance
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError # SyperBadError inherits from ApplicationError
end

err = SuperBadError.new
err.display_error





# Overriding inherited class method
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end


class Dragon < Creature
  def fight # fight from Creature gets overwritten by a new fight method
    return "Breathes fire!"
  end
end





# super
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    puts "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    puts "Instead of breathing fire. . . "
    super # super will search for a method with the same name in the superclass
          # if it finds the method, it will use that version of the method
  end
end

seath = Dragon.new("seath")
seath.fight




# example
class Message 
  @@messages_sent = 0
  def initialize(from, to)
    @from = from 
    @to = to 
    @@messages_sent += 1 
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
end

my_message = Message.new("Ian", "Alex")





# example
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end
  
  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("superUser", "12345")





# public and private
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  
  public
  def bark
    puts "Woof!"
  end
  
  private
  def id
    @id_number = 12345
  end
end






# module
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end






# Math::PI
puts Math::PI



# require
require 'date'

puts Date.today




# include
# don't need to use Math::
include Math

puts PI





# classes and modules
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump






# extend
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now











# attr_reader
# can read age
class Person
  attr_reader :age
end







# attr_writer
# can write age
class Person
  attr_writer :age
end





# attr_accessor
# can read and write age
class Person
  attr_accessor :age
end








# final example
class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  def withdraw(pin_number,amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}."
    else
      puts pin_error
    end
  end

  private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end 
end

checking_account = Account.new("Eric", 1_000_000)