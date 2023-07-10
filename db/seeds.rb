# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Create powers
power1 = Power.create(name: 'Super Strength', description: 'The ability to exhibit enhanced physical strength.')
power2 = Power.create(name: 'Flight', description: 'The ability to fly or levitate.')
power3 = Power.create(name: 'Telepathy', description: 'The ability to read minds and communicate telepathically.')
power4 = Power.create(name: 'Invisibility', description: 'The ability to become invisible at will.')
power5 = Power.create(name: 'Super Speed', description: 'The ability to move at incredible speeds.')
power6 = Power.create(name: 'Telekinesis', description: 'The ability to move objects with the power of the mind.')
power7 = Power.create(name: 'Healing Factor', description: 'The ability to heal rapidly and regenerate from injuries.')
power8 = Power.create(name: 'Energy Projection', description: 'The ability to project and control energy beams.')
power9 = Power.create(name: 'Shape-Shifting', description: 'The ability to change one\'s physical form.')
power10 = Power.create(name: 'Time Manipulation', description: 'The ability to manipulate time.')

# Create heroes
hero1 = Hero.create(name: 'Superman', super_name: 'Clark Kent')
hero2 = Hero.create(name: 'Wonder Woman', super_name: 'Diana Prince')
hero3 = Hero.create(name: 'Spider-Man', super_name: 'Peter Parker')
hero4 = Hero.create(name: 'Batman', super_name: 'Bruce Wayne')
hero5 = Hero.create(name: 'Flash', super_name: 'Barry Allen')
hero6 = Hero.create(name: 'Hulk', super_name: 'Bruce Banner')
hero7 = Hero.create(name: 'Storm', super_name: 'Ororo Munroe')
hero8 = Hero.create(name: 'Black Widow', super_name: 'Natasha Romanoff')
hero9 = Hero.create(name: 'Green Lantern', super_name: 'Hal Jordan')
hero10 = Hero.create(name: 'Doctor Strange', super_name: 'Stephen Strange')

# Create hero powers
HeroPower.create(strength: 'Strong', hero: hero1, power: power1)
HeroPower.create(strength: 'Strong', hero: hero2, power: power2)
HeroPower.create(strength: 'Average', hero: hero3, power: power3)
HeroPower.create(strength: 'Weak', hero: hero4, power: power4)
HeroPower.create(strength: 'Strong', hero: hero5, power: power5)
HeroPower.create(strength: 'Average', hero: hero6, power: power6)
HeroPower.create(strength: 'Average', hero: hero7, power: power7)
HeroPower.create(strength: 'Weak', hero: hero8, power: power8)
HeroPower.create(strength: 'Strong', hero: hero9, power: power9)
HeroPower.create(strength: 'Strong', hero: hero10, power: power10)