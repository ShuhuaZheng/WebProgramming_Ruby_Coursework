#class solution for Question 1

class WordCount 
  def count_word(*args)
	# when str is not empty
		if !args[0].empty?
			# when word is not empty
			case args.size	#check the number of argments passed 

			when 1				#when word is omitted 
				puts "str: #{args[0]}"
				puts "String to search: nil"
				results = args[0].downcase.scan(/\w+/).inject(Hash.new(0)) {|h, w| h[w] += 1; h}
				puts "Result: #{results}"

			when 2				#when word is passed 
				puts "str: #{args[0]}"
				puts "string to search: #{args[1]}"
				count = args[0].downcase.scan(args[1]).count
				puts "Result: \"#{args[1]}\" appears #{count} times."

			end
		else 	# when str is empty, print out the error message 
			puts "Error: cannot seach in empty string!"
		end 
			
	end 

end 