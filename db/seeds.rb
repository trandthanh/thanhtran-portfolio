# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying projects...'
Project.destroy_all

puts 'Creating projects...'
projects_attributes = [
  {
    name:         'Protectoris',
    category:     'Freelance',
    language:     'Wordpress',
    description:  'An e-commerce store (sale & rent) of Alarm Security Systems',
    slug:         'protectoris',
    link:         'https://protectoris.fr/'
  },
  {
    name:         'Kaki',
    category:     'Freelance',
    language:     'HTML & CSS, jQuery',
    description:  'A customized Coming Soon page for a new vegetal & green brand',
    slug:         'kaki',
    link:         'http://kaki-paris.com'
  },
  {
    name:         'Chez soi',
    category:     'Freelance',
    language:     'Wordpress',
    description:  'A showcase website for yoga and sorority retreats',
    slug:         'chezsoi',
    link:         'http://chezsoi-retraites.com'
  },
  {
    name:         'KBuddy',
    category:     'Personal Project',
    language:     'Rails, HTML & CSS, JavaScript',
    description:  'Our Le Wagon Final Project - A daily diary for cancer patients',
    slug:         'kbuddy',
    link:         'http://kbuddy.org'
  },
  {
    name:         'Hospital.ity',
    category:     'Personal Project',
    language:     'Rails, HTML & CSS, JavaScript',
    description:  'Under Construction - An Airbnb-like platform for patients & family',
    slug:         'hospitality',
    link:         'http://hospital-ity.herokuapp.com'
  },
  {
    name:         'Cocktail Memories',
    category:     'Personal Project',
    language:     'Rails, HTML & CSS, JavaScript',
    description:  'A Le Wagon Exercise - A cocktail aggregator',
    slug:         'cocktailmemories',
    link:         'https://cocktail-memories.herokuapp.com'
  }
]
Project.create!(projects_attributes)
puts 'Finished!'
