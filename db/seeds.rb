# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email: "ejemplo1@mail.com", password: "1234", name: "juan")
user2 = User.create(email: "ejemplo2@mail.com", password: "1234", name: "pedro")
user3 = User.create(email: "ejemplo3@mail.com", password: "1234", name: "lucas")
user4 = User.create(email: "ejemplo4@mail.com", password: "1234", name: "mateo")
user5 = User.create(email: "ejemplo5@mail.com", password: "1234", name: "judas")
admin = User.create(email: "admin@mail.com", password: "admin1234", is_admin: true, name: "admin")

bootcamp1 = Bootcamp.create(name:"Holberton School", overall_score:"0", curriculum_score:"0", job_support_score:"0", description:"Holberton School was founded in San Francisco by Sylvain Kalache and Julien Barbier to solve a problem they observed all over the tech world. They had noticed aspiring software engineers would devote years to studying, sometimes accumulating over a hundred thousand dollars of student debt, and would still not have the skills necessary to find a job in software engineering. Sylvain and Julien decided to build a new school; one that taught students to think and learn like the best programmers, one that helped students develop soft skills to get them noticed in interviews and throughout their careers, and one with a curriculum developed to give students practical experience through a Full-Stack engineering program.")

course1 = Course.create(name:"Full stack software engineering", cost:"75000000", duration: "72", locations: [:Medellin, :Bogota, :Cali] , description: "The first three sprints of our on-site intensive education covers the foundations of computer science and software engineering, including low-level programming & algorithms, high-level programming and databases, and system engineering & networking.", subjects: [:Git, :C, :Python], bootcamp_id:1, pay_after_grad:true, percent:"17", payments:"36")

review1 = Review.create(name:"Norman Isaza", email:"isaza00@hotmail.com", job_title:"software engineer", anonymity: false, title: "mis 9 meses en holberton", comment: "El mejor lugar para aprender, los mejores 9 meses de mi vida", alum: true, end_year:"2020", course_id:1, bootcamp_id:1)