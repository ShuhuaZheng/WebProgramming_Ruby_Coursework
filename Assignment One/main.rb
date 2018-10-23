#!/usr/bin/ruby

#Question 1 
require_relative 'Question1'
puts "Question1"

count = WordCount.new()

puts "Testcase 1:"
str = %{Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.}
puts count.count_word(str, "and")

puts "Testcase 2:"
str = %{three, three, three}
puts count.count_word(str)

puts "Testcase 3"
str = %{}
puts count.count_word(str)
puts "----------------------------------------------------------------------------"


#Question 2 
require_relative 'Question2'
puts "Question 2"
students = [

{:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},

{:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},

{:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},

{:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}

]

puts "Students' Records:"
puts students
puts 
puts "The following students have \"firstname: Ken\""
search_students(students, firstname: "Ken")

puts "The following students have \"phonenumber: 443234567\""
search_students(students, phonenumber: 443234567)

puts "The following students have \"lastname: LastnameJohn\""
search_students(students, lastname: "LastnameJohn")

puts "The student with \"firstname: Lisa\" doesn't exit"
search_students(students, firstname: "Lisa")
puts
puts "----------------------------------------------------------------------------"


#Question 3 
require_relative 'Question3'
puts "Question 3"
puts "Testing intialize()"
obj = Enclose.new("<", ">", "i", "love", "you")
puts obj.arr.to_s
puts 

puts "Testing set()" 
obj.set("<", ">", "i", "love", "you", "very", "much")
puts obj.arr.to_s
puts 
 
# add singleton method to object 
def obj.reverse_arr()
	@arr.reverse!
end 

puts "Testing singleton methond reverse()"
obj.reverse_arr()
puts obj.arr.to_s
puts

puts "Testing empty argument list"
obj.set()
puts
puts "----------------------------------------------------------------------------"


#Question 4 
require_relative 'Question4'
puts "Question 4"
puts "String to compress: i love you but do you love me"
obj = Compress.new("i love you but do you love me")
print "Check string array: "
puts obj.str_arr.to_s
print "Check index array: "
puts obj.idx_arr.to_s
puts 

puts "Testing empty str as arugment"
obj_tmp = Compress.new()
puts
puts "----------------------------------------------------------------------------"


#Question 5
require_relative 'Question5'
puts "Question 5"
puts "String to compress: i love you but do you love me"
puts "Checking string array and index array: "
Compress.compress("i love you but do you love me")
puts

puts "Testing empty str as arugment"
Compress.compress()
puts 
puts "----------------------------------------------------------------------------"


#Question 6
require_relative 'Question6'
puts "Question 6"
h1 = {"a" => 100, "b" => 200}
h2 = {"b" => 254, "c" => 300}
puts "h1: " + h1.to_s
puts "h2: " + h2.to_s
puts 

puts "Testing merge() without block: "
tmp1 = h1.merge(h2)
puts tmp1.to_s
puts

puts "Testing merge() with block: "
puts "Block operation: val2 - val1"
tmp2 = h1.merge(h2) {|key, val1, val2| val2 - val1}
puts tmp2.to_s
puts

puts "Testing merge!() without blocks: "
puts "h1: " + h1.to_s
puts "h2: " + h2.to_s
tmp = h1.merge!(h2)
puts "New h1: " + h1.to_s
puts

puts "Testing merge!() with blocks: "
puts "Block operation: val2 + val1"
puts "h1: " + h1.to_s
puts "h2: " + h2.to_s
tmp = h1.merge!(h2) {|key, val1, val2| val2 + val1}
puts "New h1: " + h1.to_s
puts 

puts "Testing no argument situation: "
tmp = h1.merge()
puts 
puts "----------------------------------------------------------------------------"


#Question 7
require_relative 'Question7'
puts "Question 7"
puts "Testing each() method: "
obj = Compress.new("i love you but do you love me")
obj.each {|word| print word + " "}
puts 
puts

puts "Testing reverse_each() method: "
obj.reverse_each() {|word| print word + " "}
puts 
puts

puts "Testing inject() method - finding the longest word "
puts obj.inject {|word1, word2| word1.length > word2.length ? word1 : word2}
puts 
puts "----------------------------------------------------------------------------"


#Question 8
require_relative 'Question8'
puts "Question 8"
puts "Advisor speech is as following: "
puts
obj = Speak.new()
obj.process()
puts 
puts "----------------------------------------------------------------------------"
