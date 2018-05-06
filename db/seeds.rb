require_relative("../models/product.rb")
require_relative("../models/supplier.rb")
require("pry-byebug")

product1 = Product.new({"product" => "Tablet", "description" => "Candy", "quantity" => 80, "buying_cost" => 50, "selling_price" => 99})
product1.save()
product2 = Product.new({"product" => "Curly Wurly", "description" => "Chocolate", "quantity" => 11, "buying_cost" => 5, "selling_price" => 35})
product2.save()
product3 = Product.new({"product" => "Love Hearts", "description" => "Candy", "quantity" => 100, "buying_cost" => 5, "selling_price" => 35})
product3.save()
product4 = Product.new({"product" => "Minstrels", "description" => "Chocolate", "quantity" => 8, "buying_cost" => 20, "selling_price" => 80})
product4.save()
product5 = Product.new({"product" => "Mars Bar", "description" => "Chocolate", "quantity" => 45, "buying_cost" => 25, "selling_price" => 85})
product5.save()
product6 = Product.new({"product" => "Edinburgh Rock", "description" => "Candy", "quantity" => 90, "buying_cost" => 40, "selling_price" => 90})
product6.save()
product7 = Product.new({"product" => "Milk Tray", "description" => "Box of chocolates", "quantity" => 3, "buying_cost" => 210, "selling_price" => 490})
product7.new
product8 = Product.new({"product" => "Flake", "description" => "Chocolate", "quantity" => 0, "buying_cost" => 30, "selling_price" => 80})
product8.save()
product9 = Product.new({"product" => "Quality Street", "description" => "Box of chocolates", "quantity" => 30, "buying_cost" => 250, "selling_price" => 390})
product9.save()

supplier1 = Supplier.new({"name" => "MaKCandy", "telephone_number" => "0131 123 3456"})
supplier1.save()
supplier2 = Supplier.new({"name" => "Cadbury", "telephone_number" => "0121 111 2222"})
supplier2.save()
supplier3 = Supplier.new({"name" => "ChocoDelivery", "telephone_number" => "0131 666 9999"})
supplier3.save()

binding.pry
nil
