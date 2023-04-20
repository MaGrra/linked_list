require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :contents

  def initialize
    @head = nil
  end

  def append(value)
    return begin_list(value) if head.nil?

    tail.next_node = create_node(value)
  end

  def prepend(value)
    return begin_list(value)

  end

  def size(node = head, counter = 1)
    return counter if last_node?(node)

    size(node.next_node, counter + 1)
  end

  def at(index, node = head, counter = 0)
    return node if index == counter

    at(index, node.next_node, counter + 1)
  end

  def pop(node = head)

    return node.next_node = nil if last_node?(node.next_node)

    pop(node.next_node)
  end

  
  
  
  def tail(node = head)
    return node if last_node?(node)
    tail(node.next_node)
  end

  def last_node?(node)
    return true if node.next_node.nil?

    false
  end

def create_node(value = nil, next_node = nil)
  Node.new(value, next_node)
end

  def begin_list(value)
    self.head = create_node(value, head)
  end

end
