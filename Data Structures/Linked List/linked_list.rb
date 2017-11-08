class LinkedList

  class Node

    @data
    @prev_node
    @next_node

    def initialize(in_data)
      @data = in_data
      @prev_node = nil
      @next_node = nil
    end

  end

  @size
  @head_node
  @tail_node
  @current_node

  def initialize
    @size = 0
    @head_node = nil
    @tail_node = nil
    @current_node = nil
  end

  def add_first_node(new_node)
    @head_node = @tail_node = @current_node = new_node
  end

  # Adds a new node after the current node.
  def add(data)
    new_node = Node.new(data)

    if @size == 0
      add_first_node(new_node)
    elsif @current_node == @tail_node
      new_node.prev_node = @head_node
      @head_node.next_node = new_node

    else

    end

    @size += 1

  end

end