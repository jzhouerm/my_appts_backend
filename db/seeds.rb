Appointment.destroy_all
Client.destroy_all
Service.destroy_all
User.destroy_all

User.create(
    business_name: "Web Dev Co.",
    first_name: "Bob",
    last_name: "Jones",
    address: "123 Street",
    email: "email@email.com",
    password: "***"
)

User.create(
    business_name: "Business #2",
    first_name: "User #2",
    last_name: "Jones",
    address: "123 Street",
    email: "email@email.com",
    password: "***"
)


Client.create(first_name: "Client 1", last_name: "Smith")
Client.create(first_name: "Client 2", last_name: "Smith")
Client.create(first_name: "Client 3", last_name: "Smith")


Service.create(name: "Web to Mobile App Conversion", amount: 50)
Service.create(name: "Video Editting", amount: 100)

Appointment.create(
    user_id: User.first.id,
    service_id:Service.first.id, 
    client_id: Client.first.id,
    start: "2020-10-01T18:00:00",
    end: "2020-10-01T19:00:00",
    note: "Client 1's appt"
)

Appointment.create(
    user_id: User.first.id,
    service_id: Service.second.id, 
    client_id: Client.first.id,
    start: "2020-10-01T18:00:00",
    end: "2020-10-01T19:00:00",
    note: "Client 1's appt"
)

p User.all.count
p Client.all.count
p Service.all.count
p Appointment.all.count

puts "seeds created"