class Stack

  class Node

    attr_accessor :data, :prev_node, :next_node
    attr_writer :data, :prev_node, :next_node

    def initialize(in_data)
      @data = in_data
      @prev_node = nil
      @next_node = nil
    end

  end

  def initialize
    @size = 0
    @head_node = nil
    @tail_node = nil
    @current_node = nil
  end

  def init_first_node(in_data)
    @size = 1
    @head_node = @tail_node = @current_node = Node.new(in_data)
  end





end