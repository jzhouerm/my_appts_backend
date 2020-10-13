Appointment.destroy_all
Client.destroy_all
Service.destroy_all
# User.destroy_all

# User.create(
#     business_name: "Web Dev Co.",
#     first_name: "Bob",
#     last_name: "Jones",
#     address: "123 Street",
#     email: "email@email.com",
#     password: "***"
# )

# User.create(
#     business_name: "Business #2",
#     first_name: "User #2",
#     last_name: "Jones",
#     address: "123 Street",
#     email: "email@email.com",
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
Client.create(first_name: "Nick", last_name: "Smith", phone: "917-555-1246", email: "client14@email.com")
Client.create(first_name: "Oscar", last_name: "Smith", phone: "917-555-1247", email: "client15@email.com")
Client.create(first_name: "Peter", last_name: "Smith", phone: "917-555-1248", email: "client16@email.com")
Client.create(first_name: "Quinn", last_name: "Smith", phone: "917-555-1249", email: "client17@email.com")
Client.create(first_name: "Richard", last_name: "Smith", phone: "917-555-1250", email: "client18@email.com")


Service.create(name: "Web to Mobile App Conversion", amount: 5000)
Service.create(name: "Video Editting", amount: 1000)
Service.create(name: "Web Development Project", amount: 1000)

5.times do
Appointment.create(
    user_id: User.first.id,
    service_id:Service.first.id, 
    client_id: Client.first.id,
    start: "2020-10-13T18:00:00",
    end: "2020-10-13T19:00:00",
    note: "Phase 1: A note for the client's appointment"
)

Appointment.create(
    user_id: User.first.id,
    service_id:Service.first.id, 
    client_id: Client.first.id,
    start: "2020-10-14T18:00:00",
    end: "2020-10-14T19:00:00",
    note: "Phase 2: A note for the client's appointment"
)

Appointment.create(
    user_id: User.first.id,
    service_id: Service.second.id, 
    client_id: Client.second.id,
    start: "2020-10-13T18:00:00",
    end: "2020-10-13T19:00:00",
    note: "Phase 1: A note for the client's appointment"
)

Appointment.create(
    user_id: User.first.id,
    service_id: Service.second.id, 
    client_id: Client.second.id,
    start: "2020-10-14T18:00:00",
    end: "2020-10-14T19:00:00",
    note: "Phase 2: A note for the client's appointment"
)
end

15.times do
Appointment.create(
    user_id: User.first.id,
    service_id: Service.third.id, 
    client_id: Client.all.sample.id,
    start: "2020-10-14T18:00:00",
    end: "2020-10-14T19:00:00",
    note: "Phase 2: A note for the client's appointment"
)
end

p User.all.count
p Client.all.count
p Service.all.count
p Appointment.all.count

puts "seeds created"