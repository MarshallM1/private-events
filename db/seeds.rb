User.create!(name:  "Example User", email: "user@example.com")

5.times do |n|
  name  = Faker::StarWars.character
  email = "example-#{n+1}@example.com"
  User.create!(name:  name, email: email)
end

users = User.order(:created_at)
users.each do |user|
  4.times do
    title = "#{Faker::StarWars.vehicle} Event"
    description = Faker::StarWars.quote
    date = Faker::Date.between(7.days.ago, 7.days.from_now)
    location = Faker::StarWars.planet

    user.events.create!(title: title,
                        description: description,
                        date: date,
                        location: location)
  end
end

events = Event.all
10.times do
  users.each do |user|
    event = events[rand(20)]
    if event.guests.include?(user)
      next
    else
      user.attendees.create(attended_event: event)
    end
  end
end