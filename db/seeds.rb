# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Parent.destroy_all
ParentProfile.destroy_all
Baby.destroy_all

Parent.create! [
	{ username: "bingo", password: "xingbin" },
	{ username: "melody", password: "dcy" }
]

p = Parent.find_by username: "bingo"
p.create_parent_profile! name: "Xing Bin", gender: "Male", birthday: Date.new(1982,11,1)

p = Parent.find_by username: "melody"
p.create_parent_profile! name: "Deng Chunyan", gender: "Female", birthday: Date.new(1984,3,18)