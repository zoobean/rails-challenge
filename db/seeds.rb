1000.times do
  genre = Faker::Book.genre
  Book.create(
    title: "#{Faker::Book.title}: #{genre}",
    author_name: Faker::Book.author,
    isbn_13: Faker::Number.number(digits: 13),
    genre: genre,
    publisher: Faker::Book.publisher,
    description: Faker::Books::Lovecraft.paragraphs(number: 3),
  )
end

user = User.new(
  email: "example@example.xyz",
  password: "something",
  password_confirmation: "something",
)

user.save
