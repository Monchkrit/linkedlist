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
      list.next_node = previous

    else
      previous.next_node = nil
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(85, node3)
node5 = LinkedListNode.new(26, node4)
node6 = LinkedListNode.new(68, node5)
reverse_list(node1, node2)
reverse_list(node2, node3)
reverse_list(node3, node4)
reverse_list(node4, node5)
reverse_list(node5, node6)
reverse_list(node6)
print_values(node1)
