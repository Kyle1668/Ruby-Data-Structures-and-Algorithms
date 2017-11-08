class LinkedList

  class Node
    Number @data
    Node @prev_node
    Node @next_node

    def initialize(in_data)
      @data = in_data
      @prev_node = nil
      @next_node = nil
    end

  end

  Number size
  Node @head_node
  Node @tail_node
  Node @current_node

  def initialize
    @size = 0
    @head_node = nil
    @tail_node = nil
    @current_node = nil
  end

  def add_first_node(new_node)
    @head_node = @tail_node = @current_node = new_node
  end

  def add(data)
    new_node = Node.new(data)

    if @size == 0
      add_first_node(new_node)
    elsif @current_node == @head_node
      new_node
    elsif @current_node == @tail_node

    else

    end

    @size += 1

  end

end