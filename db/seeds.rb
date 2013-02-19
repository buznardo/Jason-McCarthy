# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create :email => "jasonmccarthyphotography@gmail.com", :password => "2574alphaomega"
User.create :email => "colmtuite@gmail.com", :password => "foobar"

Tag.create :name => "Fashion"
Tag.create :name => "Portrait"
Tag.create :name => "Project"

# shoot_1 = Shoot.new title: 'Shoot 1', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_1.thumb = File.new("test/fixtures/jason-1.jpeg")
# shoot_1.save!
# shoot_1.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_1.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_1.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_1.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_1.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_2 = Shoot.new title: 'Shoot 2', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_2.thumb = File.new("test/fixtures/jason-2.jpeg")
# shoot_2.save!
# shoot_2.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_2.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_2.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_2.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_2.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_3 = Shoot.new title: 'Shoot 3', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_3.thumb = File.new("test/fixtures/jason-3.jpeg")
# shoot_3.save!
# shoot_3.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_3.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_3.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_3.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_3.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_4 = Shoot.new title: 'Shoot 4', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_4.thumb = File.new("test/fixtures/jason-4.jpeg")
# shoot_4.save!
# shoot_4.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_4.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_4.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_4.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_4.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_5 = Shoot.new title: 'Shoot 5', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_5.thumb = File.new("test/fixtures/jason-5.jpeg")
# shoot_5.save!
# shoot_5.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_5.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_5.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_5.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_5.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_6 = Shoot.new title: 'Shoot 6', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_6.thumb = File.new("test/fixtures/jason-6.jpeg")
# shoot_6.save!
# shoot_6.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_6.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_6.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_6.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_6.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
# 
# shoot_7 = Shoot.new title: 'Shoot 7', 
# description: 'The perfect blend between comfort and elegance. Our standard room offers luxury at an affordable price.'
# shoot_7.thumb = File.new("test/fixtures/jason-7.jpeg")
# shoot_7.save!
# shoot_7.photos.create!(pic: File.new("test/fixtures/show-1.jpeg"))
# shoot_7.photos.create!(pic: File.new("test/fixtures/show-2.jpeg"))
# shoot_7.photos.create!(pic: File.new("test/fixtures/show-3.jpeg"))
# shoot_7.photos.create!(pic: File.new("test/fixtures/show-4.jpeg"))
# shoot_7.photos.create!(pic: File.new("test/fixtures/show-5.jpeg"))
