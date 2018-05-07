require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/supplier')

get '/suppliers' do
  @suppliers = Supplier.all()
  erb ( :"suppliers/index" )
end
