# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create :email => "jasonmccarthyphotography@gmail.com", :password => "2574alphaomega"

Tag.create :name => "Fashion"
Tag.create :name => "Portrait"
Tag.create :name => "Landscape"
Tag.create :name => "Wedding"
