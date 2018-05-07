require('minitest/autorun')
require('minitest/rg')
require_relative('../supplier')

class TestSupplier < Minitest::Test

  def setup
    options = {"name" => "MaKCandy", "telephone_number" => "0131 123 3456"}
    @name = Supplier.new(options)
    @telephone_number = Supplier.new(options)
  end

  def test_name()
    assert_equal("MaKCandy", @name.name())
  end

  def test_telephone_number
    assert_equal("0131 123 3456", @telephone_number.telephone_number())
  end

end
