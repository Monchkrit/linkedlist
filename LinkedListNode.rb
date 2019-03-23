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

  def reverse_list(list, previous=nil)
    if list
      @list = list
      @prev_node = previous
      print "#{@list}"

    else
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(85, node3)
node5 = LinkedListNode.new(26, node4)
node6 = LinkedListNode.new(68, node5)
print_values(node6)

reverse_list(node6.value, node6.next_node)