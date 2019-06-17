class Coworkingfilter < ApplicationRecord
validates :city, :beginDate, :finishDate, presence: true
	validate :date_consistency

	def date_consistency
			if beginDate > finishDate
			errors.add(:beginDate, 'Begin date should be less or equal to finish date')
			throw(:abort)	
		end	
	end	
end
