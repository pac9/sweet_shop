require_relative( '../db/sql_runner' )

class Supplier

 attr_reader :id
 attr_accessor :name, :telephone_number

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @telephone_number = options['telephone_number']
  end

  def save()
    sql = "INSERT INTO suppliers
     (
      name,
      telephone_number
      )
      VALUES
      ($1, $2)
      RETURNING id"
    values = [@name, @telephone_number]
    supplier = SqlRunner.run(sql, values).first
    @id = supplier['id'].to_i
  end

  def update()
    sql = "UPDATE suppliers SET name = $1, telephone_number = $2 WHERE id = $3"
    values = [@name, @telephone_number, @id]
    SqlRunner.run( sql, values )
  end

  def products()
    sql = "SELECT * FROM products WHERE supplier_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{|product| Product.new(product)}
  end

  def delete()
    sql = "DELETE FROM suppliers WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM suppliers"
    supplier_hashes = SqlRunner.run(sql)
    return Supplier.map_items(supplier_hashes)
  end

  def self.map_items(supplier_hashes)
    result = supplier_hashes.map {|supplier_hash| Supplier.new(supplier_hash) }
    return result
  end

  def self.delete_all
    sql = "DELETE FROM suppliers"
    SqlRunner.run( sql )
    end

  def self.find(id)
    sql = "SELECT * FROM suppliers WHERE id = $1"
    values = [id]
    supplier = SqlRunner.run( sql, values )
    result = Supplier.new( supplier.first)
    return result
  end

end
