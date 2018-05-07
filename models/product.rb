require_relative( '../db/sql_runner' )

class Product

attr_reader :id, :product, :description, :stock_quantity, :buying_cost, :selling_price, :supplier_id, :comments

 def initialize(options)
   @id = options['id'].to_i if options['id']
   @product = options['product']
   @description = options['description']
   @stock_quantity = options['stock_quantity'].to_i
   @buying_cost = options['buying_cost'].to_i
   @selling_price = options['selling_price'].to_i
   @supplier_id = options['supplier_id'].to_i
   @comments = options['comments']
 end



end
