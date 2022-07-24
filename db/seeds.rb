# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Blog.all.count < 1
    5.times do
        Blog.create title: Faker::Esport.game, body: Faker::Fantasy::Tolkien.poem, user_id: rand(1..User.all.count)
    end
end


[
    {
        first_name: 'Jake',
        last_name: 'Short',
        email: 'jrshort89@gmail.com',
        password: 'password',
    },
    {
        first_name: 'Test',
        last_name: 'Testerson',
        email: 'test@test.com',
        password: 'password',
    }
].each { |u|
    if !User.find_by email: u[:email]
        user = User.create u
        puts "Successfully created user: #{user.email}"
    end
}


