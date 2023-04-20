require_relative './lib/node'
require_relative './lib/linked_list'


the_list = LinkedList.new

puts the_list

the_list.append("test1")
the_list.append("test2")
the_list.append("test3")
the_list.prepend("beforeTest")
p "The size is #{the_list.size} "
puts the_list.head
p the_list.at(2)
p the_list.tail
#the_list.pop
p the_list.tail
puts "\nContains"
p the_list.contains?("beforeTest1")
puts "\nFind"
p the_list.find("test2")
puts "\nThe list"
p the_list.to_str

