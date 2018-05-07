require_relative("../models/product.rb")
require_relative("../models/supplier.rb")
require("pry-byebug")

# Supplier.delete_all()

supplier1 = Supplier.new({"name" => "MaKCandy", "telephone_number" => "0131 123 3456"})
supplier1.save()
supplier2 = Supplier.new({"name" => "Cadbury", "telephone_number" => "0121 111 2222"})
supplier2.save()
supplier3 = Supplier.new({"name" => "ChocoDelivery", "telephone_number" => "0131 666 9999"})
supplier3.save()

product1 = Product.new({"product" => "Tablet", "description" => "Candy", "stock_quantity" => 80, "buying_cost" => 50, "selling_price" => 99, "supplier_id" => supplier1.id})
product1.save()
product2 = Product.new({"product" => "Curly Wurly", "description" => "Chocolate", "stock_quantity" => 11, "buying_cost" => 5, "selling_price" => 35, "supplier_id" => supplier2.id})
product2.save()
product3 = Product.new({"product" => "Love Hearts", "description" => "Candy", "stock_quantity" => 100, "buying_cost" => 5, "selling_price" => 35, "supplier_id" => supplier1.id})
product3.save()
product4 = Product.new({"product" => "Minstrels", "description" => "Chocolate", "stock_quantity" => 8, "buying_cost" => 20, "selling_price" => 80, "supplier_id" => supplier3.id})
product4.save()
product5 = Product.new({"product" => "Mars Bar", "description" => "Chocolate", "stock_quantity" => 45, "buying_cost" => 25, "selling_price" => 85, "supplier_id" => supplier3.id})
product5.save()
product6 = Product.new({"product" => "Edinburgh Rock", "description" => "Candy", "stock_quantity" => 90, "buying_cost" => 40, "selling_price" => 90, "supplier_id" => supplier1.id})
product6.save()
product7 = Product.new({"product" => "Milk Tray", "description" => "Box of chocolates", "stock_quantity" => 3, "buying_cost" => 210, "selling_price" => 490, "supplier_id" => supplier2.id})
product7.save()
product8 = Product.new({"product" => "Flake", "description" => "Chocolate", "stock_quantity" => 0, "buying_cost" => 30, "selling_price" => 80, "supplier_id" => supplier2.id})
product8.save()
product9 = Product.new({"product" => "Quality Street", "description" => "Box of chocolates", "stock_quantity" => 30, "buying_cost" => 250, "selling_price" => 390, "supplier_id" => supplier3.id})
product9.save()

binding.pry
nil
