class Userparam < ApplicationRecord
	belongs_to :user

	validates :firstname, :lastname, :age, :hometown, :occupation, presence: true
    validates :age, numericality: { only_integer: true, message: "please enter only integer" }
    validates :firstname, :lastname, format: { with: /\A[a-zA-Z]+\z/,
    message: "please enter only letters" }
    validates :lastname,:firstname, length: { in: 3..20 }
end
