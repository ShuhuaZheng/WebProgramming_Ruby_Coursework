# Solution for Question 3

class Enclose 
	attr_accessor :arr # set accessor

	def initialize(*arg)
		@arr = []

		set(*arg) #set arr when *arg is no empty  
	end 

	def set(*arg)
		if arg.length == 0
			puts "Error: no arguments!"
		end 

		@arr.clear()	# reset @arr to empty 

		left = arg[0] 	# get the left surrounding char
		right = arg[1] 	# get the right surrounding char 

		# loop through each word and put surrounding chars to each word 
		for i in 2...arg.length
			@arr << (left + arg[i] + right)
		end 
	end 

end 