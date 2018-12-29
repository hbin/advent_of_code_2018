require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'inventory_management'
require 'input'

class InventoryManagementTest < Minitest::Test
  def test_checksum
    assert_equal 12, InventoryManagement.new.checksum(%w[abcdef bababc abbcde abcccd aabcdd abcdee ababab])
    puts InventoryManagement.new.checksum(InventoryManagement::PUZZLES)
  end

  def test_common_letters
    assert_equal 'fgij', InventoryManagement.new.common_letters(%w[abcde fghij klmno pqrst fguij axcye wvxyz])
    puts InventoryManagement.new.common_letters(InventoryManagement::PUZZLES)
  end
end
