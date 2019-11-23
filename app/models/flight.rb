# == Schema Information
#
# Table name: flights
#
#  id                           :integer          not null, primary key
#  departs_at                   :datetime
#  description                  :string
#  fifteen_minute_reminder_sent :boolean          default(FALSE)
#  five_minute_reminder_sent    :boolean          default(FALSE)
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  user_id                      :integer
#

class Flight < ApplicationRecord
end
