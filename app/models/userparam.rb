class Userparam < ApplicationRecord
	belongs_to :user

	validates :firstname, :lastname, :age, :hometown, :occupation, presence: true
    validates :age, numericality: { only_integer: true, message: "please enter only integer" }
    validates :firstname, :lastname, format: { with: /\A[a-zA-Z]+\z/,
    message: "please enter only letters" }
    validates :lastname,:firstname, length: { in: 3..20 }
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/assets/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

