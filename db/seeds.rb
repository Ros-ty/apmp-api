# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
 	{
 		email: "email_admin@gmail.com",
 		password: "password",
 		password_confirmation: "password",
    role: "admin"
 	},
 	{
 		email: "email_moderator@gmail.com",
 		password: "password",
 		password_confirmation: "password",
    role: "moderator"
 	},
 	{
 		email: "email_user@gmail.com",
 		password: "password",
 		password_confirmation: "password",
    role: "user"
 	}
])

Category.create!([
  {
    name: "М'ясо",
    content: "М'ясо М'ясо М'ясо М'ясо М'ясо М'ясо М'ясо М'ясоМ'ясо"
  },
  {
    name: "Риба",
    content: "Риба Риба Риба Риба Риба Риба Риба РибаРиба"
  },
  {
    name: "Сало",
    content: "Сало Сало Сало Сало Сало Сало Сало СалоСало"
  },
  {
    name: "Кава",
    content: "Кава Кава Кава Кава Кава Кава Кава КаваКава"
  },
  {
    name: "Чай",
    content: "Чай Чай Чай Чай Чай Чай Чай ЧайЧай"
  }
])