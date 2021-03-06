# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning DB..."
SurfSession.destroy_all
User.destroy_all

puts "creating users..."
justine = User.new(email: 'justine@mail.com', password: '123321', name: 'justine' )
file = File.open(Rails.root.join('db/seeds/img_users/justine.jpg'))
justine.photo.attach(io: file, filename: 'justine.jpg', content_type: 'image/jpeg')
justine.save!

pierre = User.new(email: 'pierren@mail.com', password: '123321')
file = File.open(Rails.root.join('db/seeds/img_users/pierren.jpg'))
pierre.photo.attach(io: file, filename: 'pierren.jpg', content_type: 'image/jpeg')
pierre.save!


puts "creating sessions..."
sauveterre = SurfSession.new(title: "sauveterre on fire", date: '2021/08/10', spot: "sauveterre", spot_type: "beach", tide: "mid-tide", description: 'Glassy, 1.5m aux séries, top !',rating: 3, user:justine)
sauveterre.save!

penhors = SurfSession.new(title: "penhors on fire", date: '2021/08/10', spot: "penhors", spot_type: "beach", tide: "low-tide", description: 'Glassy, 1.5m aux séries, top !',rating: 4, user:justine)
penhors.save!

hossegor = SurfSession.new(title: "hossegor gras", date: '2021/11/10', spot: "La Nord", spot_type: "beach", tide: "high-tide", description: 'Fat, 3.5m aux séries, top !',rating: 4, user:pierre)
hossegor.save!


puts "finished !!!"
