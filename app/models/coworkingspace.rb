class Coworkingspace < ApplicationRecord
		mount_uploader :image, PhotoUploader
		belongs_to :user
		has_many :suggestionspaces
		has_many :orderspaces
		validates :city, :address, :area, :description, :price, :people_number, :image, presence: true
		validates :area, :numericality => true
		validates :price, :numericality => true
		has_many :comments
end
