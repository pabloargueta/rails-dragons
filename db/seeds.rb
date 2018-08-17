# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "mel", last_name: "gibson", attack_power: 10, defense_power: 20)
User.create(first_name: "brave", last_name: "heart", attack_power: 20, defense_power: 10)


Dragon.create(name: "bubbles", breed: "hydra", attack_power: 20, user: User.find(1))
Dragon.create(name: "buttercup", breed: "drake", attack_power: 50, user: User.find(2))
Dragon.create(name: "blossom", breed: "draconic", attack_power: 40, user: User.find(1))
