class Booking < ActiveRecord::Base

	validates_presence_of :time, :user_id, :course_id

	belongs_to :course
	belongs_to :user

	validate :check_time, :check_slot, on: :create

	def check_time
		hour = self.time.strftime('%H').to_i
		minitue = self.time.strftime('%M').to_i
		if (hour != 7 || minitue != 0) && (hour != 9 || minitue != 0) && (hour != 19 || minitue != 0) && (hour != 21 || minitue != 0)
			self.errors.add(:base, "Sorry, You can book course in these slots : 7 am, 7 pm, 9 am, 9 pm.") 
		end		
	end

	def check_slot
		current_user_bookings = Booking.where(user_id: self.user_id)
		current_user_bookings.each do |booking|
			if booking.time.strftime('%H').to_i == self.time.strftime('%H').to_i
				self.errors.add(:base, "Sorry, You have already booked a course in this slot.")
			end
		end
	end

end
