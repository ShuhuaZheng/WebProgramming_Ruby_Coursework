# Solution for Question 5 

class Compress 
	def self.compress(*arg)
		# ptint an error message if no argument is passed 
		# or passed str is emtpy 
		if arg.length != 1 || arg[0] == ""
			puts "Error: argument problem!"
			return 
		end 

		@str_arr = []	# string array to store unduplicated words
		@idx_arr = []   # index array to store indexes for each word 
		
		tmp_arr = arg[0].split()	# turn string into words 
		@str_arr = tmp_arr.uniq		# remove duplicated words 

		#loop through the words in orginal order and find index for each one 
		for word in tmp_arr
			for i in 0...@str_arr.length
				if @str_arr[i] == word
					@idx_arr.push(i)
				end 
			end 
		end 

		puts @str_arr.to_s
		puts @idx_arr.to_s
	end
 
end 