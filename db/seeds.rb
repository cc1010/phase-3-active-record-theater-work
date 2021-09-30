require 'faker'

7.times do
      Role.create(character_name: Faker::Movies::LordOfTheRings.character)
end


50.times do
  Audition.create(
      actor: Faker::Name.name,
      location:Faker::Address.full_address,
      phone: Faker::Number.number(digits: 10),
      hired: Faker::Boolean.boolean,
      role_id: rand(1..5)
  )
end
