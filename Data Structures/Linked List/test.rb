require_relative 'linked_list'


def main
  my_list = LinkedList.new

  print "before loop"

  for num in 1..10
    print num
    my_list.add(num)
  end

  print "after loop"

  my_list.print_list

end

main
