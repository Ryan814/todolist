class Todo < ApplicationRecord

	validates_presence_of :title, :due_date

	def can_destroy
		if due_date > Date.today
			true
		else
			false
		end
	end
end

