class Tree
  attr_accessor :name, :children

  def initialize(nodes = {})
    @name = "root"
    @children = []

    if nodes.size == 1
      tree_node = nodes.first
      @name = tree_node[0]

      tree_node[1].each do |node|
        children.push Tree.new({ node[0] => node[1] })
      end
    else
      nodes.each do |node|
        children.push Tree.new({ node[0] => node[1] })
      end
    end
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end

tree = Tree.new({
  "grandpa" => {
    "dad" => { "child 1" => {}, "child 2" => {} },
    "uncle" => { "child 3" => {}, "child 4" => {} },
  },
})

puts "******* Visit node *******"
tree.visit { |node| puts node.name }
puts

puts "******* Visit tree *******"
tree.visit_all { |node| puts node.name }
