# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@company = Company.create(name: "先睿國際", address: "台灣台中市大里區東南街26號", phone: "0422773355")
@shayin = @company.shayins.create(name: "王鴻傑", phone: "886932797939")
@buyer = @company.buyers.create(name: "天使", phone: "886972543216")
2.times {
  Company.first.orders.create(blackcat_num: rand(9451580000..9451589999))
  sleep 1
}

@company = Company.create(name: "好九沒進貨", address: "台灣台中市南區忠孝路135-9號", phone: "0422732015")
@company.shayins.create(name: "蔡鴻銘", phone: "886920085183")
2.times {
  @company.orders.create(blackcat_num: rand(9451580000..9451589999))
  sleep 1
}