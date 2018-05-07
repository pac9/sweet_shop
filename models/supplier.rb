require_relative( '../db/sql_runner' )

class Supplier

 attr_reader :id, :name, :telephone_number

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
  
end
