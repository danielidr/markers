# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
    Type.create!(
        name: Faker::Types.rb_string
    )

    Category.create!(
        name: Faker::Types.rb_string
        public: Faker::Boolean.boolean
    )

    Category.create!(
        name: Faker::Types.rb_string
        parent_id: rand(1..20)
    )

    Marker.create!(
        name: Faker::Lorem.sentence
        url: Faker::Internet.url
        type_id: rand(1..20)
        category_id: rand(1..20)
    )
end