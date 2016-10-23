# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{email: 'Jack@test.com', password: 'test', password_confirmation: 'test'}, {email: 'Jill@test.com', password: 'Test2', password_confirmation: 'Test2'}])

user = User.find(1)
user.create_student(first_name:'Jack', last_name: 'Jackool')

user = User.find(2)
user.create_student(first_name:'Jill', last_name: 'Katakalla')

courses = Course.create([{name: 'SENG', number: 101, credits: 6}, {name: 'SENG', number: 201, credits: 6}])

semesters = Semester.create([{name:'Fall', year:2016}, {name:'Summer', year:2016}])