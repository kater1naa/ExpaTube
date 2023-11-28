users.destroy_all
categories.destroy_all
events.destroy_all

users = []

user = User.create(first_name: "Katerina", last_name: "Mastrogianni", email: "user1@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Katerina, and I find joy in the little things. Whether it's experimenting with new recipes in the kitchen, getting lost in a good book, or simply taking leisurely walks, I believe in savoring the beauty of ordinary moments.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Alexander", last_name: "Wojdynski", email: "user2@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Alexander, and my curiosity is my driving force. Whether I'm diving into a new book or exploring a fresh hobby, I'm all about embracing the journey of continuous learning and personal growth.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Ehiaghe", last_name: "Aisiri", email: "user3@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Aisiri, and I thrive on building meaningful connections. Whether it's over a cup of coffee, through virtual chats, or by participating in community events, I believe in the power of genuine connections.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Julia", last_name: "Kleber", email: "user4@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Julia, and nature is my sanctuary. Hiking trails, camping under the stars, and immersing myself in the natural world are my go-to activities for finding peace and inspiration.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Bilal", last_name: "Can Sinaci", email: "user5@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Bilal, always on the lookout for the latest in tech. From smart home setups to exploring emerging technologies, I love navigating the ever-evolving digital landscape.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Elena", last_name: "Voda", email: "user6@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Elena, and fitness is my passion. Whether I'm hitting the gym, practicing yoga, or trying out new fitness trends, I believe in the holistic connection between mind and body.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Natalia", last_name: "Quintero", email: "user7@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Natalia, and I express myself through art. Whether it's painting, writing, or playing music, creativity is my outlet, and I find inspiration in the act of creation.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Flor", last_name: "Salvadeo", email: "user8@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Flor, and family is everything to me. Whether it's family dinners, game nights, or creating memories together, I cherish the bonds and moments shared with my loved ones.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "Karl", last_name: "von der Eltz", email: "user9@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm Karl, a natural problem solver. Whether it's troubleshooting tech issues or finding innovative solutions in daily life, I thrive on overcoming challenges.", avatar: "avatar.jpg")
users << user
user = User.create(first_name: "David", last_name: "Julian", email: "user10@example.com", password: "123456", password_confirmation: "123456", social_media: "https://www.instagram.com/username/", bio: "I'm David, a fitness guru, turns sweat into smiles. Committed to a healthy lifestyle, he motivates others to embrace the benefits of exercise. Outside the gym, Leo enjoys outdoor adventures and wellness hacks.", avatar: "avatar.jpg")
users << user

categories = []

category = Category.create(name: "Casual Meetups")
categories << category
category = Category.create(name: "Sports & Fitness")
categories << category

event = Event.new(title: "Chill & Connect", user_id: users[0].id, address: "Rheinlanddamm 200 44139 Dortmund", description: "The perfect setting for those seeking a relaxed and friendly environment to meet new people.", category_id: users[0].id, limit: 15)
event = Event.new(title: "Casual Conversations", user_id: users[1].id, address: "Maritim Platz 1 40474 Düsseldorf", description: "The go-to event for those who appreciate the beauty of unhurried, spontaneous dialogue in a laid-back setting.", category_id: users[0].id, limit: 13)
event = Event.new(title: "Friendly Faces", user_id: users[2].id, address: "Landfermannstraße 6 47051 Duisburg", description: "Is your invitation to an event where warm smiles and welcoming personalities set the stage for meaningful connections.", category_id: users[0].id, limit: 20)
event = Event.new(title: "Kickback Conversations", user_id: users[3].id, address: "Carlswerkstraße 11c 51063 Köln", description: "Invites you to unwind and engage in laid-back discussions in a relaxed and comfortable atmosphere.", category_id: users[0].id, limit: 12)
event = Event.new(title: "Neighborly Natter", user_id: users[4].id, address: "Martinstraße 39 50667 Köln", description: "We celebrate the beauty of local connections.", category_id: users[0].id, limit: 50)
event = Event.new(title: "Fitness Fusion", user_id: users[5].id, address: "Further Straße 27 41462 Neuss", description: "Dynamic and innovative event that brings together the best elements of various fitness disciplines, creating a unique and energizing experience.", category_id: users[1].id, limit: 16)
event = Event.new(title: "Basketball Game", user_id: users[6].id, address: "Ludolf-Camphausen-Straße 22, 50672 Köln", description: "With a limit of 10 people for 2 teams, drinks and food included.", category_id: users[1].id, limit: 10)
event = Event.new(title: "Swimming Lessons", user_id: users[7].id, address: "Gürzenichstraße 6-16, 50667 Köln", description: "I invite you to spend a day with the best swimming lessons given by a professional with 10 years of experience.", category_id: users[1].id, limit: 5)
event = Event.new(title: "Yoga Sessions", user_id: users[8].id, address: "Am Rinkenpfuhl 27-29 50676 Köln", description: "Immerse yourself in an oasis of calmness, where each breath becomes a mindful movement and every stretch contributes to the harmonious balance of mind, body, and soul.", category_id: users[1].id, limit: 8)
event = Event.new(title: "Football Game", user_id: users[9].id, address: "Subbelrather Str. 17, 50823 Köln", description: "Two teams limit to spend the day, with good atmosphere and energy. only soccer lovers.", category_id: users[1].id, limit: 22)
