# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.create(
	title: 'Reaching for the Goal',
	text: Faker::ChuckNorris.fact
	)

Article.create(
	title: 'Determined to Succeed',
	text: Faker::ChuckNorris.fact
	)

Article.create(
	title: 'Its More Than What You Do',
	text: Faker::ChuckNorris.fact
	)