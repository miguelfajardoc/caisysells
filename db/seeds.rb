# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

main_account = Account.create!(name: "Caisy", subdomain: "caisy", domain: "caisy.pet")

ActsAsTenant.current_tenant = main_account

yo = User.create!(#name: "Miguel",
                  email: "miky116@gmail.com", password: "asdf1234")

#Categories
queso = Category.create!(name: "Quesos", color: 1)
crema = Category.create!(name: "Cremas", color: 2)


#Products

cremalb = Product.create!(name: "Crema LB", cost: 3100, price: 4500, category: crema)
queso_paipa = Product.create!(name: "Queso paipa", cost: 5000, price: 6500, category: queso)

#Zones

bosa = Zone.create!(name: "Bosa",
                    #address_delimiters: [["Av 1 mayo", "carrera 100 sur"], ["av bosa", "calle 100 sur"]],
                    color: 1)

#clientes

pollos = Client.create!(name: "pollolac", address: "calle 40sur # 30-50", phone: "34221345", zone: bosa)