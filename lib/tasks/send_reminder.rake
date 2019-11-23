task({:fifteen => :environment}) do
  fifteen = Flight.
            where({:fifteen_minute_reminder_sent => false}).
            where("departs_at < ?", 24.hours.ago + 15.minutes)

  fifteen.each do |flight|
    p flight.description
    flight.fifteen_minute_reminder_sent = true
    flight.save
  end 
end