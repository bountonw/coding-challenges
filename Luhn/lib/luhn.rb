
# Step 1 - break the credit card into it's individual digits.
# Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.

module Luhn
  def self.is_valid?(number)
  	return false if number.to_s.length != 16
    array = number.to_s.chars.map(&:to_i).reverse
    array.each_with_index do |digit, index|
    	if index % 2 != 0
    		array[index] = (digit * 2) >= 10 ? digit * 2 - 9 : digit * 2
    	end
    end
    return array.reduce(:+) % 2 == 0
  end
end