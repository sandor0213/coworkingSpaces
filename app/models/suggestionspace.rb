class Suggestionspace < ApplicationRecord
belongs_to :coworkingspace
	validate :date_is_new
	validate :date_is_not_past
	validate :date_consistency

		def date_is_new
			@coworkingspace = Coworkingspace.find(coworkingspace_id)
		invalid_date = @coworkingspace.suggestionspaces.map do |space|
			
			!(beginDate > space.finishDate || finishDate < space.beginDate)

		end


		if invalid_date.any?
			errors.add(:beginDate, 'Such date is already created!')
			throw(:abort)
		end
		end	

		def date_is_not_past
			@coworkingspace = Coworkingspace.find(coworkingspace_id)
			if beginDate < Date.today || finishDate < Date.today
				errors.add(:beginDate, 'Such date is past')
			throw(:abort)
		    end
	    end	

	    def date_consistency
			if beginDate > finishDate
			errors.add(:beginDate, 'Begin date should be less or equal to finish date')
			throw(:abort)	
		end	
	end	
end