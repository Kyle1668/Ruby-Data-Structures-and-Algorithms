class LinkedList

  class Node
    
    @data
    @prev_node
    @next_node

    # attr_accessor :next_node, :prev_node, :data
    # attr_reader :next_node, prev_node, data

    def initialize(in_data)
      @data = in_data
      @prev_node = nil
      @next_node = nil
    end

  end

  @size = 0
  @head_node = nil
  @tail_node = nil
  @current_node = nil

  # def initialize
  #   @size = 0
  #   @head_node = nil
  #   @tail_node = nil
  #   @current_node = nil
  # end

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
      @tail_node = new_node
      @current_node = @tail_node
    else
      new_node.prev_node = @current_node
      new_node.next_node = @current_node.next_node
      @current_node.next_node = new_node
      @current_node = new_node
    end

    @size += 1

  end

  def print_list
    if @size > 0
      iterator = @head_node

      until iterator.next_node == nil do
        print iterator.data
        iterator = iterator.next_node
      end

    end
  end

end
