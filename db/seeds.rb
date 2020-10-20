Project.destroy_all
Client.destroy_all
Task.destroy_all
# User.destroy_all

# User.create(
#     business_name: "Web Dev Co.",
#     first_name: "Jules",
#     last_name: "Z.",
#     address: "123 Street",
#     email: "email@email.com",
#     password: "***"
# )

# User.create(
#     business_name: "Web Dev Co. #2",
#     first_name: "Amy",
#     last_name: "Jones",
#     address: "123 Street",
#     email: "email2@email.com",
#     password: "***"
# )


Client.create(first_name: "Amy", last_name: "Smith", phone: "917-555-1234", email: "client1@email.com")
Client.create(first_name: "Benjamin", last_name: "Smith", phone: "646-555-1234", email: "client2@email.com")
Client.create(first_name: "Chris", last_name: "Smith", phone: "917-555-1235", email: "client3@email.com")
Client.create(first_name: "David", last_name: "Smith", phone: "917-555-1236", email: "client4@email.com")
Client.create(first_name: "Eric", last_name: "Smith", phone: "917-555-1237", email: "client5@email.com")
Client.create(first_name: "Frank", last_name: "Smith", phone: "917-555-1238", email: "client6@email.com")
Client.create(first_name: "George", last_name: "Smith", phone: "917-555-1239", email: "client7@email.com")
Client.create(first_name: "Heather", last_name: "Smith", phone: "917-555-1240", email: "client8@email.com")
Client.create(first_name: "Ivan", last_name: "Smith", phone: "917-555-1241", email: "client9@email.com")
Client.create(first_name: "Jack", last_name: "Smith", phone: "917-555-1242", email: "client10@email.com")
Client.create(first_name: "Kathy", last_name: "Smith", phone: "917-555-1243", email: "client11@email.com")
Client.create(first_name: "Luis", last_name: "Smith", phone: "917-555-1244", email: "client12@email.com")
Client.create(first_name: "Mitchell", last_name: "Smith", phone: "917-555-1245", email: "client13@email.com")
# Client.create(first_name: "Nick", last_name: "Smith", phone: "917-555-1246", email: "client14@email.com")
# Client.create(first_name: "Oscar", last_name: "Smith", phone: "917-555-1247", email: "client15@email.com")
# Client.create(first_name: "Peter", last_name: "Smith", phone: "917-555-1248", email: "client16@email.com")
# Client.create(first_name: "Quinn", last_name: "Smith", phone: "917-555-1249", email: "client17@email.com")
# Client.create(first_name: "Richard", last_name: "Smith", phone: "917-555-1250", email: "client18@email.com")

# 10.times do
Project.create(user_id: User.first.id, client_id: Client.first.id, name: "Web to Mobile App Conversion", description: "Project description", amount: 5000, paid: 5000, start: "2020-10-01T18:00:00", end: "2020-10-19T19:00:00", status: true)
Project.create(user_id: User.first.id, client_id: Client.second.id, name: "React Native App for fashion marketplace", description: "Project description", amount: 1000, paid: 0, start: "2020-10-12T18:00:00", end: "2020-10-23T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.third.id, name: "Mobile App Interface Updates", description: "Project description", amount: 1000, paid: 0, start: "2020-10-18T18:00:00", end: "2020-11-11T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.fourth.id, name: "React + Wordpress + API Integration", description: "Project description", amount: 1000, paid: 0, start: "2020-10-20T18:00:00", end: "2020-11-21T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.fifth.id, name: "Front-End Development for E-Commerce Site", description: "Project description", amount: 1000, paid: 0, start: "2020-10-15T18:00:00", end: "2020-11-30T19:00:00")

# end

# 1.times do
Task.create(
    project_id: Project.first.id,
    start: "2020-10-18T09:00:00",
    end: "2020-10-18T15:00:00",
    note: "Phase 1: A note for the client's project."
)
Task.create(
    project_id: Project.second.id,
    start: "2020-10-22T10:00:00",
    end: "2020-10-22T16:00:00",
    note: "Phase 1: A note for the client's project."
)
Task.create(
    project_id: Project.third.id,
    start: "2020-10-19T12:00:00",
    end: "2020-10-19T16:00:00",
    note: "Phase 1: A note for the client's project."
)
Task.create(
    project_id: Project.fourth.id,
    start: "2020-10-20T09:00:00",
    end: "2020-10-20T14:00:00",
    note: "Phase 1: A note for the client's project."
)
# end

p User.all.count
p Client.all.count
p Task.all.count
p Project.all.count

puts "seeds created"