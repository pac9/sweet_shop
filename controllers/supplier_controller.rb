require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/supplier')
require_relative('../models/product')

get '/suppliers' do
  @suppliers = Supplier.all()
  erb ( :"suppliers/index" )
end

get '/suppliers/add' do
  @suppliers = Supplier.all()
  erb ( :"suppliers/add")
end

post '/suppliers' do
  @supplier = Supplier.new(params)
  @supplier.save()
  redirect to("/suppliers")
end

get '/suppliers/:id/edit' do
  @supplier = Supplier.find( params[:id] )
  erb ( :"suppliers/edit")
end

post '/suppliers/:id' do
  Supplier.new( params ).update
  redirect to '/suppliers'
end

get '/suppliers/:id/delete' do
  @supplier = Supplier.find( params[:id] )
  erb ( :"suppliers/delete")
end

post '/suppliers/:id/delete' do
  @products = Product.all
  @supplier = Supplier.find( params[:id] )
  @supplier.delete()
  
  redirect to("/suppliers")
end
