class Node
  attr_reader :value, :left_child, :right_child
  attr_writer :left_child, :right_child

  def initialize(value)
    @value = value
  end


end

# mynode = Node.new(6)
# other_node = Node.new(4)
# mynode.left_child = other_node

class BinarySearchTree
  attr_reader :root_node

  def initialize(root_node)
    @root_node = root_node
  end

  def search(value)
    current_node = @root_node
    while current_node != nil
      if value > current_node.value
        current_node = current_node.right_child
      elsif value < current_node.value
        current_node = current_node.left_child
      elsif value  == current_node.value
        return current_node
      end
    end
    return false
  end

  def insert(starting_node, new_node)
    if new_node.value < starting_node.value

      if starting_node.left_child == nil
        # puts "inserting #{new_node.value} as left child of #{starting_node.value}"
        starting_node.left_child = new_node
      else
        insert(starting_node.left_child, new_node) #recursion
      end

    elsif new_node.value > starting_node.value

      if starting_node.right_child == nil
        # puts "inserting #{new_node.value} as right child of #{starting_node.value}"
        starting_node.right_child = new_node
      else
        insert(starting_node.right_child, new_node)
      end

    end
  end

end

firstnode = Node.new(10) #root node
mytree = BinarySearchTree.new(firstnode)

nodes = [Node.new(11), Node.new(6), Node.new(3), Node.new(20)] # nodes to insert

nodes.each do |node|
  mytree.insert(mytree.root_node, node)
end
