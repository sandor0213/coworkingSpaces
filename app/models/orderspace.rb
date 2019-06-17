class Orderspace < ApplicationRecord
	belongs_to :user
	belongs_to :coworkingspace
	validate :available_people_number
	validate :date_is_not_past
	validate :date_consistency

	def date_consistency
			if beginDate > finishDate
			errors.add(:beginDate, 'Begin date should be less or equal to finish date')
			throw(:abort)	
		end	
	end	

	def available_people_number
		peopleTaken = 0
		coworkingspace.orderspaces.each do |order|
			if 	!(beginDate > order.finishDate || finishDate < order.beginDate)
				if id != order.id 
					peopleTaken += order.peopleNumber
				 else 
				
			end
		end
	end
	peopleAvailable = coworkingspace.people_number - peopleTaken
	
	if peopleAvailable < peopleNumber
		errors.add(:peopleNumber, "You cannot to book this cowoking place for #{people_number} people. This space is available only for #{peopleAvailable} more people")
			throw(:abort)
		else
		end
	 
	end	

	def date_is_not_past
			if beginDate < Date.today || finishDate < Date.today
				errors.add(:beginDate, 'Such date is past')
			throw(:abort)
		    end
	    end	
end
