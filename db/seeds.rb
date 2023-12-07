require "open-uri"

Attendance.destroy_all
Event.destroy_all
Category.destroy_all
User.destroy_all

user1 = User.new(first_name: "Katerina", last_name: "Mastrogianni", email: "user1@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Katerina, and I find joy in the little things. Whether it's experimenting with new recipes in the kitchen, getting lost in a good book, or simply taking leisurely walks, I believe in savoring the beauty of ordinary moments.", location: "Bonn")
file = URI.open("https://avatars.githubusercontent.com/u/145225567?v=4")
user1.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user1.save

user2 = User.new(first_name: "Alexander", last_name: "Wojdynski", email: "user2@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Alexander, and my curiosity is my driving force. Whether I'm diving into a new book or exploring a fresh hobby, I'm all about embracing the journey of continuous learning and personal growth.", location: "Cologne")
file = URI.open("https://avatars.githubusercontent.com/u/91845534?v=4")
user2.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user2.save

user3 = User.new(first_name: "Ehiaghe", last_name: "Aisiri", email: "user3@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Aisiri, and I thrive on building meaningful connections. Whether it's over a cup of coffee, through virtual chats, or by participating in community events, I believe in the power of genuine connections.", location: "Frankfurt")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696014725/vk9ula0yvtdbc5o7q18w.jpg")
user3.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user3.save

user4 = User.new(first_name: "Julia", last_name: "Kleber", email: "user4@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Julia, and nature is my sanctuary. Hiking trails, camping under the stars, and immersing myself in the natural world are my go-to activities for finding peace and inspiration.", location: "Cologne")
file = URI.open("https://avatars.githubusercontent.com/u/142741980?v=4")
user4.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user4.save

user5 = User.new(first_name: "Bilal", last_name: "Can Sinaci", email: "user5@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Bilal, always on the lookout for the latest in tech. From smart home setups to exploring emerging technologies, I love navigating the ever-evolving digital landscape.", location: "Frankfurt")
file = URI.open("https://avatars.githubusercontent.com/u/146480108?v=4")
user5.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user5.save

user6 = User.new(first_name: "Elena", last_name: "Voda", email: "user6@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Elena, and fitness is my passion. Whether I'm hitting the gym, practicing yoga, or trying out new fitness trends, I believe in the holistic connection between mind and body.", location: "Koblenz")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696170922/nyynrzjuydnabln3tqb8.jpg")
user6.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user6.save

user7 = User.new(first_name: "Natalia", last_name: "Quintero", email: "user7@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Natalia, and I express myself through art. Whether it's painting, writing, or playing music, creativity is my outlet, and I find inspiration in the act of creation.", location: "Essen")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657526832/vcmgkgh5bzpbmzshbudy.jpg")
user7.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user7.save

user8 = User.new(first_name: "Flor", last_name: "Salvadeo", email: "user8@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Flor, and family is everything to me. Whether it's family dinners, game nights, or creating memories together, I cherish the bonds and moments shared with my loved ones.", location: "Essen")
file = URI.open("https://ca.slack-edge.com/T02NE0241-U02D2C95UUX-9eedf168bbec-192")
user8.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user8.save

user9 = User.new(first_name: "Karl", last_name: "von der Eltz", email: "user9@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Karl, a natural problem solver. Whether it's troubleshooting tech issues or finding innovative solutions in daily life, I thrive on overcoming challenges.", location: "Koblenz")
file = URI.open("https://avatars.githubusercontent.com/u/71014523?v=4")
user9.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user9.save

user10 = User.new(first_name: "David", last_name: "Julian", email: "user10@example.com", password: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm David, a fitness guru, turns sweat into smiles. Committed to a healthy lifestyle, he motivates others to embrace the benefits of exercise. Outside the gym, Leo enjoys outdoor adventures and wellness hacks.", location: "Cologne")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696014835/vppoaniwuxef5tletxke.jpg")
user10.avatar.attach(io: file, filename: "user.png", content_type: "image/png")
user10.save

casual = Category.create!(name: "Casual Meetups")
casual_photo = File.open(Rails.root.join('app/assets/images/event-picture5.jpg'))
casual.photo.attach(io: casual_photo, filename: 'event-picture5.jpg', content_type: 'image/jpg')
casual.save

sports = Category.create!(name: "Sports & Fitness")
sports_photo = File.open(Rails.root.join('app/assets/images/event-picture3.jpg'))
sports.photo.attach(io: sports_photo, filename: 'event-picture3.jpg', content_type: 'image/jpg')
sports.save

outdoor = Category.create!(name: "Outdoor Activities")
outdoor_photo = File.open(Rails.root.join('app/assets/images/event-picture6.jpg'))
outdoor.photo.attach(io: outdoor_photo, filename: 'event-picture6.jpg', content_type: 'image/jpg')
outdoor.save

arts = Category.create!(name: "Arts & Entertainment")
arts_photo = File.open(Rails.root.join('app/assets/images/event-picture2.jpg'))
arts.photo.attach(io: arts_photo, filename: 'event-picture2.jpg', content_type: 'image/jpg')
arts.save

adventure = Category.create!(name: "Travel & Adventure")
adventure_photo = File.open(Rails.root.join('app/assets/images/event-picture4.jpg'))
adventure.photo.attach(io: adventure_photo, filename: 'event-picture4.jpg', content_type: 'image/jpg')
adventure.save

family = Category.create!(name: "Family & Parenting")
family_photo = File.open(Rails.root.join('app/assets/images/event-picture7.jpg'))
family.photo.attach(io: family_photo, filename: 'event-picture7.jpg', content_type: 'image/jpg')
family.save

hobbies = Category.create!(name: "Crafts & Hobbies")
hobbies_photo = File.open(Rails.root.join('app/assets/images/event-picture1.jpg'))
hobbies.photo.attach(io: hobbies_photo, filename: 'event-picture1.jpg', content_type: 'image/jpg')
hobbies.save

concerts = Category.create!(name: "Other Meetups")
concerts_photo = File.open(Rails.root.join('app/assets/images/event-picture8.jpg'))
concerts.photo.attach(io: concerts_photo, filename: 'event-picture8.jpg', content_type: 'image/jpg')
concerts.save

meetups = Category.create!(name: "All Meetups")
meetups_photo = File.open(Rails.root.join('app/assets/images/event-picture9.jpg'))
meetups.photo.attach(io: meetups_photo, filename: 'event-picture9.jpg', content_type: 'image/jpg')
meetups.save

# casual = Category.create!(name: "Sports & Fitness")
# casual_photo = File.open(Rails.root.join('app/assets/images/event-picture3.jpg'))
# casual.photo.attach(io: casual_photo, filename: 'event-picture5.jpg', content_type: 'image/jpg')
# casual.save

# sports = Category.create!(name: "Sports & Fitness")
# # outdoor =
# Category.create!(name: "Outdoor Activities")
# # arts =
# Category.create!(name: "Arts & Entertainment")
# # adventure =
# Category.create!(name: "Travel & Adventure")
# # family =
# Category.create!(name: "Family & Parenting")
# # hobbies =
# Category.create!(name: "Crafts & Hobbies")
# # concerts =
# Category.create!(name: "Concerts")
# # meetups =
# Category.create!(name: "Other Meetups")

Event.create!(title: "Chill & Connect", user: user1, address: "Rheinlanddamm 200 44139 Dortmund", description: "The perfect setting for those seeking a relaxed and friendly environment to meet new people.Let's grab a cup of coffee and get to know each other.", category: casual, limit: 15, starts_at: DateTime.new(2023, 12, 9, 10, 0, 0), ends_at: DateTime.new(2023, 12, 9, 12, 0, 0))

Event.create!(title: "Casual Conversations", user: user2, address: "Maritim Platz 1 40474 Düsseldorf", description: "The go-to event for those who appreciate the beauty of unhurried, spontaneous dialogue in a laid-back setting.", category: casual, limit: 13, starts_at: DateTime.new(2023, 12, 13, 18, 0, 0), ends_at: DateTime.new(2023, 12, 13, 20, 0, 0))

Event.create!(title: "Friendly Faces", user: user3, address: "Landfermannstraße 6 47051 Duisburg", description: "Is your invitation to an event where warm smiles and welcoming personalities set the stage for meaningful connections.", category: casual, limit: 20, starts_at: DateTime.new(2023, 12, 1, 17, 0, 0), ends_at: DateTime.new(2023, 12, 1, 20, 0, 0))

Event.create!(title: "Kickback Conversations", user: user4, address: "Carlswerkstraße 11c 51063 Köln", description: "Invites you to unwind and engage in laid-back discussions in a relaxed and comfortable atmosphere.", category: casual, limit: 12, starts_at: DateTime.new(2023, 12, 1, 10, 0, 0), ends_at: DateTime.new(2023, 12, 1, 12, 0, 0))

Event.create!(title: "Neighborly Natter", user: user5, address: "Martinstraße 39 50667 Köln", description: "We celebrate the beauty of local connections.", category: casual, limit: 50, starts_at: DateTime.new(2023, 12, 29, 20, 0, 0), ends_at: DateTime.new(2023, 12, 29, 23, 0, 0))

Event.create!(title: "Fitness Fusion", user: user6, address: "Further Straße 27 41462 Neuss", description: "Dynamic and innovative event that brings together the best elements of various fitness disciplines, creating a unique and energizing experience.", category: sports, limit: 16, starts_at: DateTime.new(2024, 1, 9, 10, 0, 0), ends_at: DateTime.new(2024, 1, 9, 12, 0, 0))

Event.create!(title: "Basketball Game", user: user7, address: "Ludolf-Camphausen-Straße 22, 50672 Köln", description: "With a limit of 10 people for 2 teams, drinks and food included.", category: sports, limit: 10, starts_at: DateTime.new(2023, 12, 16, 11, 0, 0), ends_at: DateTime.new(2023, 12, 16, 13, 0, 0))

Event.create!(title: "Swimming Lessons", user: user8, address: "Gürzenichstraße 6-16, 50667 Köln", description: "I invite you to spend a day with the best swimming lessons given by a professional with 10 years of experience.", category: sports, limit: 5, starts_at: DateTime.new(2024, 1, 14, 16, 0, 0), ends_at: DateTime.new(2024, 1, 14, 17, 0, 0))

Event.create!(title: "Yoga Sessions", user: user9, address: "Am Rinkenpfuhl 27-29 50676 Köln", description: "Immerse yourself in an oasis of calmness, where each breath becomes a mindful movement and every stretch contributes to the harmonious balance of mind, body, and soul.", category: sports, limit: 8, starts_at: DateTime.new(2023, 12, 11, 15, 0, 0), ends_at: DateTime.new(2023, 12, 11, 16, 30, 0))

Event.create!(title: "Football Game", user: user10, address: "Subbelrather Str. 17, 50823 Köln", description: "Two teams limit to spend the day, with good atmosphere and energy. only soccer lovers.", category: sports, limit: 22, starts_at: DateTime.new(2023, 12, 17, 10, 0, 0), ends_at: DateTime.new(2023, 12, 17, 12, 0, 0))
