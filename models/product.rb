require_relative('../db/sql_runner')

class Product

attr_reader :id, :product, :description, :stock_quantity, :buying_cost, :selling_price, :supplier_id

 def initialize(options)
   @id = options['id'].to_i if options['id']
   @product = options['product']
   @description = options['description']
   @stock_quantity = options['stock_quantity'].to_i
   @buying_cost = options['buying_cost'].to_i
   @selling_price = options['selling_price'].to_i
   @supplier_id = options['supplier_id'].to_i
   # @comments = options['comments']
 end

 def save()
   sql = "INSERT INTO products
    (
     product,
     description,
     stock_quantity,
     buying_cost,
     selling_price,
     supplier_id

     )
     VALUES
     ($1, $2, $3, $4, $5, $6)
     RETURNING id"
   values = [@product, @description, @stock_quantity, @buying_cost, @selling_price, @supplier_id]
   product = SqlRunner.run(sql, values).first
   @id = product['id'].to_i
 end

 def self.all()
 sql = "SELECT * FROM products"
 product_hashes = SqlRunner.run(sql)
 return Product.map_items(product_hashes)
 end

 def self.map_items(product_hashes)
 result = product_hashes.map {|product_hash| Product.new(product_hash) }
 return result
 end

 def self.delete_all
 sql = "DELETE FROM products"
 SqlRunner.run( sql )
 end

end
