## Code Challenge 4:  Factorial using tail recursion

# - Writing a function that computes the factorial of a positive integer greater than
#   or equal to zero using recursion.  A recursive function is a function which calls
#   itself.  Furthermore, a recursive function is one which has two cases:

#   - a base case which should terminate execution and return a result

#   - a recursive case which should call itself with a different set of
#     arguments

#   Note:  You are not to use any loop structures which include each, for, while,
#          and so on.

class Challenge4
  def self.factorial(number)
    _factorial(number, 1)
  end

  private

  def self._factorial(number, value)
    if number == 1 || number == 0
    	value
    else
    	_factorial(number-1, number * value )
    end
  end
end