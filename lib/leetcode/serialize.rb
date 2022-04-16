class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

class Serialize
  def serialize(root)
    return [root.val] if root.left.nil? && root.right.nil?

    [root.val, root.left, root.right, serialize(root.left), serialize(root.right)]
  end

  # Decodes your encoded data to tree.
  #
  # @param {string} data
  # @return {TreeNode}
  def deserialize(data)
    return deserialize_helper(data, 1)
  end

  private

  def deserialize_helper(data, level)
    return TreeNode.new(data[0]) if data.size = 1

    deserialize_helper(data[], level)

    root.left = deserialize(data.slice(3, 4))
    root.right = deserialize(data.slice(5, 6))

    root
  end

  # def serialize_children(_child)
  #   return [root.val] if root.left.nil? && root.right.nil?

  #   [root.val, root.left, root.right, serialize(root.left), serialize(root.right)]
  # end

end
