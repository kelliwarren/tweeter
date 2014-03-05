# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "ffaker"


  10.times do |i|
    User.create(
      {
      
        name: Faker::BaconIpsum.words.join(' '),
        email: Faker::Internet.email,
        username: Faker::BaconIpsum.words.join(' '),
        age: rand(5..99),
        password: "password",
        password_confirmation: "password",

      }
)
end
  
 
    @users = User.all
    20.times do |user|
      user = @users.sample
      user.tweets.build(content: Faker::Lorem.words.join(' ')).save
        
    end

 100.times do |i|
  Tweet.create(content: Faker::Lorem.words.join(' '))
end
 
  
