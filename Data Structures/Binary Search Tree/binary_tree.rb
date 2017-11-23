class BinaryTree

  class Leaf

    attr_accessor :data, :left_leaf, :right_leaf
    attr_writer :data, :left_leaf, :right_leaf

    def initialize(in_data, left_node, right_node)
      @data = in_data
      @left_leaf = left_node
      @right_leaf = right_node
    end

  end

  def initialize
    @root_node = nil
    @size = 0
  end

  def init_first_node(in_data)
    @root_node = Leaf.new(in_data, nil, nil)
    @size = 1
  end

  def add_node(in_data)
    if @size == 0
      init_first_node(in_data)
    else
      add_node_helper(in_data, @root_node)
    end
  end

  def add_node_helper(ind_data, parent_node)

  end

end