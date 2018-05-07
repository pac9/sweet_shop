require('minitest/autorun')
require('minitest/rg')
require_relative('../product')

class TestProduct < Minitest::Test

  def setup
    options = {"product" => "Edinburgh Rock", "description" => "Candy", "stock_quantity" => 90, "buying_cost" => 40, "selling_price" => 90}
    @product= Product.new(options)
    @description = Product.new(options)
    @stock_quantity = Product.new(options)
    @buying_cost = Product.new(options)
    @selling_price = Product.new(options)
  end

  def test_name()
    assert_equal("Edinburgh Rock", @product.product())
  end

  def test_description()
    assert_equal("Candy", @description.description())
  end

  def test_stock_quantity()
    assert_equal(90, @stock_quantity.stock_quantity())
  end

  def test_buying_cost()
    assert_equal(40, @buying_cost.buying_cost())
  end

  def test_selling_price()
    assert_equal(90, @selling_price.selling_price())
  end

end
