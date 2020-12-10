# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# created seeds for my Database table 
surrey = Uni.where(name: 'Surrey').first
surrey.delete if surrey
unis = Uni.create([name: 'Surrey', location: 'Guildford'])
