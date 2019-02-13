# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


emily = User.create(name: "emily", email: "emily@honeyco.nyc", password_digest: "pass")
sarah = User.create(name: "sarah", email: "sarahsujin.shin@gmail.com", password_digest: "pass")
elizabeth = User.create(name: "elizabeth", email: "e.e.seieroe@gmail.com", password_digest: "pass")

hs1 = HeartString.create(user_id: 1, tomodachi_id: 2)
hs2 = HeartString.create(user_id: 1, tomodachi_id: 3)
hs3 = HeartString.create(user_id: 2, tomodachi_id: 3)
hs4 = HeartString.create(user_id: 3, tomodachi_id: 4)
hs5 = HeartString.create(user_id: 3, tomodachi_id: 5)


c1 = Chat.create
c2 = Chat.create
c3 = Chat.create

m1 = Message.create(user_id: 1, chat_id: 1, content: "hey", valentime: Time.now)
m2 = Message.create(tomodachi_id: 2, chat_id: 1, content: "hi!", valentime: Time.now)
m3 = Message.create(user_id: 1, chat_id: 1, content: "i think you're great", valentime: Time.now)
m4 = Message.create(tomodachi_id: 2, chat_id: 1, content: "thanks :)", valentime: Time.now)
m5 = Message.create(user_id: 2, chat_id: 2, content: "omg hi", valentime: Time.now)
m6 = Message.create(user_id: 2, chat_id: 2, content: "whats up", valentime: Time.now)
m7 = Message.create(user_id: 2, tomodachi_id: 3, chat_id: 2, content: "everything is perfect", valentime: Time.now)
m8 = Message.create(user_id: 2, chat_id: 2, content: "i know :)", valentime: Time.now)

uc1 = UserChat.create(user_id: 1, tomodachi_id: 2, chat_id: 1)
uc1 = UserChat.create(user_id: 2, tomodachi_id: 3, chat_id: 2)
