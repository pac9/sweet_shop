require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/product')
require_relative('../models/supplier')


get '/products' do
  @products = Product.all()
  erb ( :"products/index" )
end

get '/products/add' do
  @suppliers = Supplier.all()
  erb ( :"products/add" )
end

post '/products' do
  @product = Product.new(params)
  @product.save()
  redirect to("/products")
end
