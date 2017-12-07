# 5 users
# pour chaque user, creer un guide
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456"
    )
  user.save
  guide = Guide.new(
    specialty: Faker::Educator.course,
    user: user
    )
  guide.save
end
