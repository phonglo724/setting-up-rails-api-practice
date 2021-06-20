# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bachelorette.destroy_all

friend1 = Bachelorette.create(first_name: "Maemai", last_name: "Cha")
friend2 = Bachelorette.create(first_name: "Pongo", last_name: "Lo")
friend3 = Bachelorette.create(first_name: "Pang", last_name: "Yang")
friend4 = Bachelorette.create(first_name: "Mary", last_name: "Xiong")
friend5 = Bachelorette.create(first_name: "Poetry", last_name: "Xiong")
friend6 = Bachelorette.create(first_name: "Chor", last_name: "Yang")
friend7 = Bachelorette.create(first_name: "Gia", last_name: "Lee")
friend8 = Bachelorette.create(first_name: "Domz", last_name: "Xiong")
friend9 = Bachelorette.create(first_name: "Sheng", last_name: "Yang")
friend10 = Bachelorette.create(first_name: "PhaNyia", last_name: "Lo")