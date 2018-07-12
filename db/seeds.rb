# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "223", email: "5@5.com", password: "111111", encrypted_password: "111111")
Post.create(title: "안녕반가워", content: "내이름은 지인", user_id: 1)