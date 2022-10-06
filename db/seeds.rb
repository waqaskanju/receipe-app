# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(name: 'TestUser', email: 'test@test.com', password: '123456', password_confirmation: '123456')

recipe1 = Recipe.create!(user: user1, name: 'Pizza', preparation_time: 10, cooking_time: 15,
                         description: 'Italian food', public: true)
recipe2 = Recipe.create!(user: user1, name: 'Burger', preparation_time: 10, cooking_time: 15,
                         description: 'Fast food', public: true)
recipe3 = Recipe.create!(user: user1, name: 'Bandeja Paisa', preparation_time: 10, cooking_time: 15,
                         description: 'Colombian food', public: true)


                         user2 = User.create(name: 'TestUser2', email: 'test2@abc.com', password: '123456', password_confirmation: '123456')

                         food1 = Food.create(name:'Handi',measurement_unit:"Kg", price:"52",quantity:"5",user_id:user1_id)