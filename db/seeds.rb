Cinema.destroy_all
Film.destroy_all
Screening.destroy_all

admin = User.create(name: "bob", email: "bob@bob.com", password: "admin", is_admin: true)
moana = User.create(name: "moana", email: "moana@moana.com", password: "password")

Cinema.create(name: "Stark Theatre", address: "7 Winterfell Rd.", phone_number: "1-234-567-8910", admin_id: 1)
Cinema.create(name: "Friends Theatre", address: "236 Central Perk Plaza", phone_number: "1-098-765-4321", admin_id: 1)

films = Film.create([
  { title: "Liar Liar",
    length: 86,
    release_date: "1997-03-21",
    rating: "PG-13",
    admin_id: 1 },
  { title: "The Imitation Game",
    length: 114,
    release_date: "2014-01-07",
    rating: "PG-13",
    admin_id: 1 }
  ])

schedules = Schedule.create([
  { day: "Monday",
    open: "11:00",
    close: "21:00",
    cinema_id: 1 },
  { day: "Tuesday",
    open: "11:00",
    close: "21:00",
    cinema_id: 1 },
  { day: "Wednesday",
    open: "11:00",
    close: "21:00",
    cinema_id: 1 },
  { day: "Thursday",
    open: "11:00",
    close: "21:00",
    cinema_id: 1 },
  { day: "Friday",
    open: "10:30",
    close: "21:59:59",
    cinema_id: 1 },
  { day: "Saturday",
    open: "10:30",
    close: "21:59:59",
    cinema_id: 1 },
  { day: "Sunday",
    open: "11:00",
    close: "21:59:59",
    cinema_id: 1 }
  ])
