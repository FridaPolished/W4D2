# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Cat.destroy_all

  cat2 = Cat.create!(birth_date: '02/02/2016', name: "gordo", color: "black", description: "whatever else", sex: "M") 
  cat3 = Cat.create!(birth_date: '02/05/2016', name: "max", color: "white", description: "another cat", sex: "M") 
  cat4 = Cat.create!(birth_date: '05/03/2018', name: "brenda", color: "blue", description: "another kitty", sex: "F") 
  cat5 = Cat.create!(birth_date: '02/08/2016', name: "catcat", color: "black", description: "whatever else2", sex: "M") 

end