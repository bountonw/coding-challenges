# ## Code Challenge 1:  Balanced Parenthesis (i.e. {[( )

# - Write a function which determines whether or not a string of characters are
#   balanced.  Thus, your Ruby program should return `true` if it's balanced and
#   `false` otherwise.

class Challenge1
  def self.open_enclosures
    ["(", "[", "{"]
  end

  def self.close_enclosures
    [")", "]", "}"]
  end

  def self.valid_pair?(open, close)
    return true if open == "(" && close == ")"
    return true if open == "[" && close == "]"
    return true if open == "{" && close == "}"
    false
  end

  def self.balanced?(string)
    input_array = string.split('')
    open_enclosures_array = []
    input_array.each do |char| 
      if open_enclosures.include? char
        open_enclosures_array << char
      elsif close_enclosures.include? char
        if open_enclosures_array.empty? || !valid_pair?(open_enclosures_array.last, char)
          return false
        else
          open_enclosures_array.pop
        end
      end
    end
    open_enclosures_array.empty?
  end
end