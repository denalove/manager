class Timeclock < ActiveRecord::Base
	belongs_to :user
	validates :user, presence: true

	#validates :time_in_break, :time_out_break, allow_blank: true

	validate :time_out_cannot_be_before_time_in, 
					 :time_out_break_cannot_be_before_time_in, 
					 :time_out_lunch_cannot_be_before_time_in,
					 :time_in_break_cannot_be_before_time_out_break	

	def time_out_cannot_be_before_time_in
		if time_out.present? && time_out < time_in
			errors.add(:time_out, "can't be before Time In")
		end
	end

	def time_out_break_cannot_be_before_time_in
		if time_out_break.present? && time_out_break < time_in
			errors.add(:time_out_break, "can't be before Time In")
		end
	end

	def time_out_lunch_cannot_be_before_time_in
		if time_out_lunch.present? && time_out_lunch < time_in
			errors.add(:time_out_lunch, "can't be before Time In")
		end
	end

	def time_in_break_cannot_be_before_time_out_break
		if time_out_break.present? && time_in_break < time_out_break
			errors.add(:time_in_break, "can't be before Time Out Break")
		end
	end


end
