# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(name: "johnfn", email: "herpderp@derp.com", password: "herpderp")
user.save

entry = Entry.new(description: "awesome entry")
entry.save

jam = Jam.new(description: "this is an awesome jam", name "superjam")
jam.save