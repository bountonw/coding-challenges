# ## Code Challenge 2:  Sum Of Three

# - Writing a function that takes an array of integers. If any 3 integers in the
#   array sum up to equal 0, return them. If not, return empty array (i.e. []). 

class Challenge2
  def self.sum_to_0(_array)
    result = []
    groupings_of_three = _array.combination(3).to_a
    groupings_of_three.each do |group|
    	result << group if group.inject(&:+)  == 0
    end
    result
  end
end