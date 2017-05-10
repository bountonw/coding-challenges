class Writable
  def self.formatter
	  lambda do |input_array|
			# input_array.chunk { |char| char }.map { |char, grouping| [grouping.length, char].flatten.join
			temp_array = input_array.flatten
			output_array = []
			count = 0
			first_character = [temp_array.first]
			next_character = []

			temp_array.each_with_index do |char, index|

				if output_array.empty? 
					if char == first_character.first
						first_character << char
					else
					 	 if next_character.empty? || char == next_character.first
					 	 	count += 1
					 	 	next_character << char
					 	 else
					 	 	output_array << count << next_character.first
					 	 	next_character = [char]
					 	 	count = 1
					 	 end
			 	  end
			 	elsif
					if char == next_character.first
						count += 1
						next_character << char
						print ''
					else
						output_array << count << next_character.first
						count = 1
						next_character = [char]
						print ''
					end
				elsif index == temp_array.length - 1
					 
					 output_array << count << next_character.first
					 # puts " You made it to the last step #{output_array}"
	    	end
	    end
	    first_character = first_character.drop(1)
	    output_array = output_array.unshift(first_character.first)
	    output_array = output_array.unshift(first_character.length)
	    output_array = output_array.join('')
	    return output_array

	  end
	end
end 

# Question: Please explain again why we use "self." here
# and how we would write it if we didn't use "self." so that 
# I understand the difference.

