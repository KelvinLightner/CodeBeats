# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: "Build Muscle")
Category.create(title: "Weight Loss")
Category.create(title: "Full Transformation")

@levels = ["Advanced", "Intermediate", "Beginner"]

@categories = Category.all


20.times do Article.create(
	name: "12-Week Daily Bulking Trainer",
	level: @levels.sample,
	duration: "12 Weeks",
	category_id: @categories.sample.id
	)
end
