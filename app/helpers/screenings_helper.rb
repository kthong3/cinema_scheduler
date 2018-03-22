module ScreeningsHelper
  def generate_wkday_screenings(cinema, film)
    screenings_needed = number_of_screenings(film)
    start_time = opening_and_previews(cinema)
    screenings_needed.times do
    end_time = start_time + film.length + 35.minutes
      screening = Screening.create(
        start_time: start_time,
        end_time: end_time,
        cinema_id: cinema.id,
        film_id: film.id
      )
      start_time = end_time
    end
  end

  def weekday_schedules(cinema_schedules)
    cinema_schedules.select {|schedule| schedule if schedule.day != "Friday" && schedule.day != "Saturday" && schedule.day != "Sunday" }
  end

  def number_of_screenings(film)
    viewing_minutes = (12 * 60) - 15
    num_screenings = (viewing_minutes/film.length).ceil
  end

  def opening_and_previews(cinema)
    monday = weekday_schedules(cinema.schedules).first
    opening = monday.open + 15.minutes + 15.minutes
  end
end
