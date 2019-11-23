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
    validates :departs_at, :presence => true
    
    #belongs_to(:user, {:class_name => "User", :foreign_key => "user_id"}) #do more than def user 
    #can even be shortern more, Ruby tries User capitalized, and foreign key 
    belongs_to(:user, {:required => true })

    #def user
    #  return User.where({:id => self.user_id}).at(0)
    #end 
end
