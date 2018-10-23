# Solution for Question 8

class Speak 
	def process
		is_advisor = false	# use a flag to check Advisor/Student status 

		# open the file and read the text
		File.open("Advisor_Student.txt", "r") do |file|
			file.readlines.each do |line|
				# check if reached the end of Advisor speech 
				if is_advisor == true && line.strip.empty?	
					is_advisor = false
					puts
				end 

				# turn on the flag if "ADVISOR" is found 
				is_advisor = true if line.match("ADVISOR\:")

				# print out a line if the flag is true 
				puts line if is_advisor == true
			end 
		end
	end 
end 