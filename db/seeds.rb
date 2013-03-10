# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new(name: "johnfn", email: "herpderp@derp.com", password: "herpderp")
user1.save

user2 = User.new(name: "herpderp", email: "derpderp@derp.com", password: "derpderp")
user2.save

jam = Jam.new(description: "this is an awesome jam", name: "superjam")
jam.user = user1
jam.save

entry = Entry.new(name: "johnfn's entry", description: "this is an awesome entry", link: "www.google.com")
entry.user = user1
entry.jam = jam
entry.save

entry = Entry.new(name: "herpderp's entry", description: "this entry kinda sux", link: "www.herpderp.com")
entry.user = user2
entry.jam = jam
entry.save

