# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test1 = Event.new(title: 'test1', day: 'Tuesday', date: 15, month: 'September', year: 2017)

p1 = Participant.new(name: 'Ravi', email: 'rbhttrai@memphis.edu', company: 'FIT')
p2 = Participant.new(name: 'Ravi1', email: 'rbhttrai1@memphis.edu', company: 'FIT1')

test1.participants << p1
test1.participants << p2
test1.save!
