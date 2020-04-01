# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
name_attributes = [
  {
    firstName: 'Hank',
    lastName: 'Hill'
  },
  {
    firstName: 'Peggy',
    lastName: 'Hill'
  },
  {
    firstName: 'Bobby',
    lastName: 'Hill'
  },
  {
    firstName: 'Ladybird',
    lastName: 'Hill'
  }
]

name_attributes.each do |attributes|
  Name.create(attributes)
end

age_attributes = [
  {
    age: 50,
    name_id: 1
  },
  {
    age: 50,
    name_id: 2
  },
  {
    age: 14,
    name_id: 3
  },
  {
    age: 30,
    name_id: 4
  }
]

age_attributes.each do |attributes|
  Age.create(attributes)
end