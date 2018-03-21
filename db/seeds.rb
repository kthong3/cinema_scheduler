# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cinema.destroy_all
Film.destroy_all
Screening.destroy_all

Cinema.create(name: "Stark Theatre", address: "7 Winterfell Rd.", phone_number: "1-234-567-8910")
Cinema.create(name: "Friends Theatre", address: "236 Central Perk Plaza", phone_number: "1-098-765-4321")

films = Film.create([
  { title: "Liar Liar",
    length: 86,
    release_date: "1997-03-21",
    rating: "PG-13" },
  { title: "The Imitation Game",
    length: 114,
    release_date: "2014-01-07",
    rating: "PG-13" }
  ])

screenings = Screening.create([
  { start_time: "12:00:00",
    end_time: "2:00:00",
    cinema_id: 1,
    film_id: 1 },
  { start_time: "12:00:00",
    end_time: "02:00:00",
    cinema_id: 1,
    film_id: 2 },
  { start_time: "02:20:00",
    end_time: "04:00:00",
    cinema_id: 1,
    film_id: 1 },
  { start_time: "02:30:00",
    end_time: "05:00:00",
    cinema_id: 1,
    film_id: 2 }
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
