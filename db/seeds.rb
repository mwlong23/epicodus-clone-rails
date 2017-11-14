# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.destroy_all
Lesson.destroy_all
Section.destroy_all




10.times do |index|
  course = Course.create!(
  title: Faker::RickAndMorty.character,
  created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
  updated_at: Faker::Date.backward(7))
  20.times do |index|
    lesson = Lesson.create!(
    name: Faker::RickAndMorty.quote,
    course_id: course.id,
    created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
    last_updated: Faker::Date.backward(7))
    10.times do |index|
      section = Section.create!(
      name: Faker::RickAndMorty.character,
      created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
      updated_at: Faker::Date.backward(7),
      text: Faker::Lorem.sentence(20, false, 0).chop,
      lesson_id: lesson.id)
    end
  end
end









  # p "created #{Course.count} courses"
  # p "created #{Lesson.count} lessons"
