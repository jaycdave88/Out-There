require 'faker'

5.times do
	User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name ,password:Faker::Internet.password(4))
	Location.create(location_name:Faker::Address.country)
end