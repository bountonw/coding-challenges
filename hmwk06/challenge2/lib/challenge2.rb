# ## Code Challenge 2:  Sum Of Three

# - Writing a function that takes an array of integers. If any 3 integers in the
#   array sum up to equal 0, return them. If not, return empty array (i.e. []).  Your solution should return an array of arrays.  For example,

#   ```
#   >> Challenge2.sum_to_0([1, 2, 3, -4])
#   => [[1, 3, -4]]

#   >> Challenge2.sum_to_0([1, 2, 3, -2, -4, 6])
#   => [[1, 3, -4], [-2, -4, 6]]

#   >> Challenge2.sum_to_0([1, 2, 3, -2, -4, 6, 7, -8, 10, 0, 3, 4])
#   => [[1, 3, -4], [1, -4, 3], [1, 7, -8], [2, -2, 0], [2, 6, -8], [-2, -4, 6],
#      [-2, -8, 10], [-4, 0, 4]]
#   ```

#   In order to complete this challenge, all specs must pass and you can run them
#   by doing the following:

#   ```
#   $ cd /path/to/homework-06/challenge2
#   $ rspec
#   ```

#   The expected output is as follows:

#   ```
#   ....

#   Finished in 0.00189 seconds (files took 0.10315 seconds to load)
#   4 examples, 0 failures
#   ```

#####
# Steps
# 1. Make array of arrays of every possible combination of 3 digits
# 2. add the elements of each sub array
# 3. If the sum of the elements equals 0 then return that array
#####
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

