# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do

  seller =  Seller.create(
    name: Forgery('name').first_name,
    email: Forgery('email').address,
    rate: rand(0..5)
  )

  rand(10..45).times do 

    Offer.create(
      seller: seller,
      title: Forgery('lorem_ipsum').title,
      description: Forgery('lorem_ipsum').text,
      price: rand(10..100),
      published: rand(0..1).to_s
    )
    
  end
end
