class Timeclock < ActiveRecord::Base
	belongs_to :user
	validates :user, presence: true


	validate :time_out_cannot_be_before_time_in, 
					 :time_out_lunch_cannot_be_before_time_in
	

	def time_out_cannot_be_before_time_in
		if time_out.present? && time_out < time_in
			errors.add(:time_out, "can't be before Time In")
		end
	end

	def time_out_lunch_cannot_be_before_time_in
		if time_out_lunch.present? && time_out_lunch < time_in
			errors.add(:time_out_lunch, "can't be before Time In")
		end
	end


end
