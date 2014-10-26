# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    User.delete_all
    mark = User.create!(name: "Mark Nachazel", email: "marknach@vt.edu", password: "password123");

    Announcement.delete_all
    post1 = Announcement.create!(title: "A post!", content: "Some text!", user: mark);

    Event.delete_all
    event1 = Event.create!(title: "Event 1", date: Date.today);
    event2 = Event.create!(title: "Event 2", date: Date.today + 3.days);

