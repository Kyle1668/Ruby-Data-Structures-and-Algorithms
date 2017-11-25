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

  attr_accessor :root_node, :size

  def initialize
    @root_node = nil
    @size = 0
  end

  def init_first_node(in_leaf)
    @root_node = Leaf.new(in_leaf, nil, nil)
    @size = 1
  end

  def add_node(in_data)
    new_leaf = Leaf.new(in_data, nil, nil)

    if @size == 0
      init_first_node(new_leaf)
    else
      add_node_helper(new_leaf, @root_node)
    end

  end

  def add_node_helper(new_leaf, parent_node)
    if parent_node.left_leaf == nil
      parent_node.left_leaf = new_leaf
    elsif parent_node.left_leaf.data < new_leaf.data
      add_node_helper(new_leaf, parent_node.left_leaf)
    elsif parent_node.left_leaf.data < new_leaf.data

    end
  end

end