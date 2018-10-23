# Solution for Question 7
class Compress 
	include Enumerable 

	attr_accessor :str_arr, :idx_arr

	# Class from Question 4
	def initialize(*arg)
		# ptint an error message if no argument is passed 
		# or passed str is emtpy 
		if arg.length == 0 || arg[0] == ""
			puts "Error: empty string, nothing to compress"
			return 
		end 

		@str_arr = []	# string array to store unduplicated words
		@idx_arr = []   # index array to store indexes for each word 

		tmp_arr = *arg[0].split()	# turn string into words 
		@str_arr = tmp_arr.uniq		# remove duplicated words 

		#loop through the words in orginal order and find index for each one 
		for word in tmp_arr
			for i in 0...@str_arr.length
					@idx_arr.push(i) if @str_arr[i] == word
			end 
		end 
	end 

	def each()
		i = 0	# starts from index 0 in @idx_arr 

		#loop through @idx_arr and convert every word back 
		while i < @idx_arr.length
			yield(@str_arr[@idx_arr[i]])
			i += 1
		end 
	end

end 