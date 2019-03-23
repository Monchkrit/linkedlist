class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
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

  @rev_stack = Array.new()
  @node_stack = Array.new()
  def make_stack(list_node)
    if list_node
      @node_stack.push(list_node)
      make_stack(list_node.next_node)
    end
  end
 
 def rev_stack(stack)
  @counter = stack.length
  @nn = 0
  #puts @counter
    while @counter > 0
    node = "node#{@nn}"
    #puts node
    node = stack.pop
    print "#{node.value} --> "
    @counter -= 1
    @nn += 1
  end
  print "nil\n"
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(85, node3)
node5 = LinkedListNode.new(26, node4)
node6 = LinkedListNode.new(68, node5)
print_values(node6)
make_stack(node6)
puts "-----------------"
rev_stack(@node_stack)