# Solution for Question 6 

# re-implement merge()
class Hash 
	def merge(*arg)
		# print an error message if no hash to merge
		if arg.length == 0
			puts "Error: no hash to merge."
			return 
		end 

		h = arg[0]	# hash passed to merge

		result = Hash.new() #used to store the merged hash
		#copy self's pairs to result 
		self.each do |k, v|
			result[k] = v
		end   

		if !block_given?	# when no block is given  
			h.each do |k, v|
				result[k] = v 
			end
		else 				# when block is given 
			h.each do |k, v|
				if result.has_key?(k)
					result[k] = yield(k , result[k], v)
				else 
					result[k] = v
				end 
			end 
		end 
		return result
	end

	# re-implement merge!()
	def merge!(*arg)
		# print an error message if no hash to merge
		if arg.length == 0
			puts "Error: no hash to merge."
			return 
		end 

		h = arg[0]	# hash passed to merge

		if !block_given? # when no block is given 
			h.each do |k, v|
				self[k] = v 
			end
		else 			# when block is given 
			h.each do |k, v|
				if self.has_key?(k)
					self[k] = yield(k , self[k], v)
				else 
					self[k] = v
				end
			end 
		end 
		return self 
	end
end 