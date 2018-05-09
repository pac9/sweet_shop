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

get '/products/:id/edit' do
  @product = Product.find( params[:id] )
  @supplier = Supplier.all()
  erb ( :"products/edit")
end

post '/products/:id' do
  Product.new( params ).update
  redirect to '/products'
end

get '/products/:id/delete' do
  @product = Product.find( params[:id] )
  @supplier = Supplier.all()
  erb ( :"products/delete")
end

post '/products/:id/delete' do
  product = Product.find( params[:id] )
  product.delete()
  redirect to("/products")
end
