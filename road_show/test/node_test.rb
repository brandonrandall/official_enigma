require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_node_exists
    assert Node.new
  end

  def test_node_is_a_node
    node = Node.new("wow")
    assert_instance_of Node, Node.class
  end
end
