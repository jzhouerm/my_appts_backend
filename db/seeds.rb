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


Client.create(first_name: "Amy", last_name: "Walsh", phone: "917-555-1234", email: "awalsh@gmail.com")
Client.create(first_name: "Benjamin", last_name: "Horowitz", phone: "646-555-1234", email: "hrowitz622@gmail.com")
Client.create(first_name: "Chris", last_name: "Dwyer", phone: "917-555-1235", email: "chris463@gmail.com")
Client.create(first_name: "David", last_name: "Reyes", phone: "917-555-1236", email: "davidr56@gmail.com")
Client.create(first_name: "Eric", last_name: "Adler", phone: "917-555-1237", email: "eadler89@gmail.com")
Client.create(first_name: "Frank", last_name: "Scholz", phone: "917-555-1238", email: "franks77@gmail.com")
Client.create(first_name: "George", last_name: "Flynn", phone: "917-555-1239", email: "flynng1@gmail.com")
Client.create(first_name: "Heather", last_name: "Vera", phone: "917-555-1240", email: "heathervera@gmail.com")
Client.create(first_name: "Ivan", last_name: "Rosen", phone: "917-555-1241", email: "irosen@gmail.com")
Client.create(first_name: "Jack", last_name: "Wu", phone: "917-555-1242", email: "jwu88@gmail.com")
Client.create(first_name: "Kathy", last_name: "Hahm", phone: "917-555-1243", email: "kathyhahm22@gmail.com")
Client.create(first_name: "Luis", last_name: "Johnson", phone: "917-555-1244", email: "luisjohnson78@gmail.com")
Client.create(first_name: "Michelle", last_name: "D'Onofrio", phone: "917-555-1245", email: "donofrio622@gmail.com")
# Client.create(first_name: "Nick", last_name: "Smith", phone: "917-555-1246", email: "client14@gmail.com")
# Client.create(first_name: "Oscar", last_name: "Smith", phone: "917-555-1247", email: "client15@gmail.com")
# Client.create(first_name: "Peter", last_name: "Smith", phone: "917-555-1248", email: "client16@gmail.com")
# Client.create(first_name: "Quinn", last_name: "Smith", phone: "917-555-1249", email: "client17@gmail.com")
# Client.create(first_name: "Richard", last_name: "Smith", phone: "917-555-1250", email: "client18@gmail.com")

# 10.times do

Project.create(user_id: User.first.id, client_id: Client.first.id, name: "Web to Mobile App Conversion", description: "Web development project for client using React Native.", amount: 5000, paid: 5000, start: "2020-10-01T09:00:00", end: "2020-10-31T19:00:00", status: true)
Project.create(user_id: User.first.id, client_id: Client.second.id, name: "React Native App for fashion marketplace", description: "Web development project for client using React Native.", amount: 6500, paid: 6500, start: "2020-10-02T12:00:00", end: "2020-10-31T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.third.id, name: "Mobile App Interface Updates", description: "Web development project for client.", amount: 1000, paid: 1000, start: "2020-10-03T12:00:00", end: "2020-10-31T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.fourth.id, name: "React + Wordpress + API Integration", description: "Web development project for client.", amount: 1000, paid: 1000, start: "2020-10-04T09:00:00", end: "2020-10-31T19:00:00")
Project.create(user_id: User.first.id, client_id: Client.fifth.id, name: "Front-End Development for E-Commerce Site", description: "Web development project for client.", amount: 1000, paid: 0, start: "2020-10-05T18:00:00", end: "2020-10-31T19:00:00")

# end

# 1.times do
Task.create(
    project_id: Project.first.id,
    start: "2020-10-14T09:00:00",
    end: "2020-10-14T15:00:00",
    note: "Phase 1: Set up wireframes and backend for client's app.",
    status: true

)
Task.create(
    project_id: Project.first.id,
    start: "2020-10-15T09:00:00",
    end: "2020-10-15T18:00:00",
    note: "Phase 2: Send client the prototype.",
    status: true
)

Task.create(
    project_id: Project.first.id,
    start: "2020-10-16T10:00:00",
    end: "2020-10-16T16:00:00",
    note: "Phase 3: A note for the client's project.",
    status: true
)
# GRAPH STOPS HERE...WHY?
Task.create(
    project_id: Project.second.id,
    start: "2020-10-17T12:00:00",
    end: "2020-10-17T18:00:00",
    note: "Phase 1: Set up wireframes and backend for client's app.",
    status: true

)
Task.create(
    project_id: Project.second.id,
    start: "2020-10-18T12:00:00",
    end: "2020-10-18T16:00:00",
    note: "Phase 2: Send client the prototype.",
    status: true

)

Task.create(
    project_id: Project.third.id,
    start: "2020-10-18T11:00:00",
    end: "2020-10-18T16:00:00",
    note: "Phase 1: Set up wireframes and backend for client's app.",
    status: true
)

Task.create(
    project_id: Project.third.id,
    start: "2020-10-19T12:00:00",
    end: "2020-10-19T17:00:00",
    note: "Phase 2: Send client the prototype.",
    status: true
)


Task.create(
    project_id: Project.fourth.id,
    start: "2020-10-20T09:00:00",
    end: "2020-10-20T13:00:00",
    note: "Phase 1: Set up wireframes and backend for client's app.",
    status: true
)

Task.create(
    project_id: Project.fourth.id,
    start: "2020-10-21T09:00:00",
    end: "2020-10-21T14:00:00",
    note: "Phase 2: Send client the prototype.",
    status: true
)
# Additional seeds
Task.create(
    project_id: Project.first.id,
    start: "2020-10-22T09:00:00",
    end: "2020-10-22T15:00:00",
    note: "Bug fixes and revisions.",
    status: true
)

Task.create(
    project_id: Project.second.id,
    start: "2020-10-23T10:00:00",
    end: "2020-10-23T15:00:00",
    note: "Bug fixes and revisions.",
    status: false
)
Task.create(
    project_id: Project.third.id,
    start: "2020-10-24T12:00:00",
    end: "2020-10-24T16:00:00",
    note: "Bug fixes and revisions.",
    status: false
)
Task.create(
    project_id: Project.fourth.id,
    start: "2020-10-25T09:00:00",
    end: "2020-10-25T15:00:00",
    note: "Bug fixes and revisions.",
    status: false
)
# end

p User.all.count
p Client.all.count
p Task.all.count
p Project.all.count

puts "seeds created"