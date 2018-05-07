require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/product_controller')
require_relative('controllers/supplier_controller')

get '/' do
    @products = Product.all()
  erb( :index )
end
