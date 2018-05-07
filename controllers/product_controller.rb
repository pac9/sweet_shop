require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/product')

get '/products' do
  @products = Product.all()
  erb ( :"products/index" )
end
