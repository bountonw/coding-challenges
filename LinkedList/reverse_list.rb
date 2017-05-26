require_relative 'stack.rb'
require_relative 'node.rb'

def reverse_list(list)
  stack = Stack.new

  while list != nil
      stack.push(list.value)
      list = list.next_node
  end

  return stack.data
end

def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end

def print_seperator(symbol="-", times=15)
	puts symbol * times
end

def reverse_list_mutation(list, previous=nil)
	list = Node.new(reverse_list_mutation(list.next_node, list.value))
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
node4 = Node.new(41, node3)

print_values(node4)
print_seperator
print_values(reverse_list(node4))
print_seperator
print_values(reverse_list_mutation(node4))