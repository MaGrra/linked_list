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

  def contains?(value, node = head)
    return true if value == node.value
    return false if last_node?(node)
    contains?(value, node.next_node)
  end

  def find(value, node = head, index = 0)
    return index if value == node.value
    return nil if last_node?(node) 

    find(value, node.next_node, index+1)
  end

  def to_str(node = head)
     print "( #{node.value} ) -> "
    return nil if last_node?(node)

    to_str(node.next_node)
  end

  def insert_at(value, index, counter = 0)
    return 'This no good fam' if at(index).nil?
    return prepend(value) if index == 0
    return at(index - 1).next_node = create_node(value, at(index)) if index == counter

    insert_at(value, index, counter + 1)
  end

  def remove_at(index, counter = 0)
    return 'This not a thing my man' if at(index).nil?
    return pop(index) if last_node?(at(index))
    return at(index - 1).next_node = at(index).next_node if index == counter 

    remove_at(index, counter + 1)
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
