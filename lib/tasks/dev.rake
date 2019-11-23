namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do

  User.destroy_all #NEVER USE IN REAL LIFE

  a= User.new
  a.email = "alice@example.com"
  a.password = "password"
  a.phone_number = "+13128262936"
  a.save


  b= User.new
  b.email = "bob@example.com"
  b.password = "password"
  b.phone_number = "+13128262936"
  b.save

  f= Flight.new
  f.departs_at = 24.hours.from_now + 20.minutes
  f.description = Faker::Address.city
  f.user_id = a.id 
  f.save

  f= Flight.new
  f.departs_at = 24.hours.from_now + 12.minutes
  f.description = Faker::Address.city
  f.user_id = a.id 
  f.save
  
  f= Flight.new
  f.departs_at = 24.hours.from_now + 8.minutes
  f.description = Faker::Address.city
  f.user_id = a.id 
  f.save

  f= Flight.new
  f.departs_at = 14.hours.from_now + 20.minutes
  f.description = Faker::Address.city
  f.user_id = a.id 
  f.save

  f= Flight.new
  f.departs_at = 1.day.ago + 20.minutes
  f.description = Faker::Address.city
  f.user_id = a.id 
  f.save

  f= Flight.new
  f.departs_at = 24.hours.from_now + 20.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save

  f= Flight.new
  f.departs_at = 24.hours.from_now + 20.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save

  f= Flight.new
  f.departs_at = 24.hours.from_now + 12.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save
  
  f= Flight.new
  f.departs_at = 24.hours.from_now + 8.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save

  f= Flight.new
  f.departs_at = 14.hours.from_now + 20.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save

  f= Flight.new
  f.departs_at = 1.day.ago + 20.minutes
  f.description = Faker::Address.city
  f.user_id = b.id 
  f.save

  end
end
