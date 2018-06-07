class Course < ActiveRecord::Base
	validates_presence_of :name, :section_id

	has_many :sections
	has_many :bookings

end
