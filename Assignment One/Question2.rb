#Solution for Question 2

def search_students(students, record)
	# use an empty to array to store the final results
	results = []

	# loop through the array and check each pair in each hash 
	for student in students 
		if student[:firstname] == record[:firstname] || student[:lastname] == record[:lastname] || student[:phonenumber] == record[:phonenumber]
			results << student # append the match hash record to results 
		end 
	end 

	# print an error message if no match is found 
	if results.empty?
		puts "Error: no match\n"
	else 
		puts "First Name\tLast Name\tPhone#{}"
		results.each {|result| print result[:firstname], "\t\t", result[:lastname], "\t", result[:phonenumber], "\n"}
		puts
	end 
end