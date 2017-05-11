class Writable
  def self.formatter
	  lambda do |input_array|
	  	output_array = []
	  	input_array.each do |array_of_consecutive_characters|
	  		output_array << array_of_consecutive_characters.length << array_of_consecutive_characters.first
	  	end
	  	output_array.join
	  end
	end
end