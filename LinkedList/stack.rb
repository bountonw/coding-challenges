load 'node.rb'

class Stack
  attr_accessor :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = Node.new(value, @data)
  end

  def pop
    top = @data
    @data = top.next_node
    top.value
  end

  def is_empty?
    @data.nil?
  end
end

# stack = Stack.new
# # @data = nil
# stack.push(10)
# # (cons 10, nil)

# stack.push(15)
# # ( cons 15, (cons 10, nil))

# stack.push(24)
# # ( cons 24, ( cons 15, (cons 10, nil)))

# # 24 --> 15 --> 10 --> nil

#  # nil --> 10 --> 15 --> 24

# p @data.next_node