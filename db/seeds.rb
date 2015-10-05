# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Buslist.create(starting: 'Kathmandu', ending: 'Pokhara', time: '10:20', busNo: 4589, price: 250)
Buslist.create(starting: 'Pokhara', ending: 'Dharan', time: '11:50', busNo: 5000, price: 350)
Buslist.create(starting: 'Jhapa', ending: 'Biratnagar', time: '12:20', busNo: 9824, price: 150)