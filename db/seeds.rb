# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.create(

  name: 'Sam Unterman',
  email: 'sammy.unterman@gmail.com',
  phone: 6474,
  address: '65 Markwood Lane, Toronto',
  twitter: '@sammyunterman',
  linkedin: '/samunterman'

)
