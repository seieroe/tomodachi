# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
HeartString.destroy_all
Chat.destroy_all
Message.destroy_all
UserChat.destroy_all

emily = User.create(name: "emily", email: "emily@honeyco.nyc", password: "pass")
sarah = User.create(name: "sarah", email: "sarahsujin.shin@gmail.com", password: "pass")
elizabeth = User.create(name: "elizabeth", email: "e.e.seieroe@gmail.com", password: "pass")
