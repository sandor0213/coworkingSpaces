class Comment < ApplicationRecord
belongs_to :user
belongs_to :coworkingspace
validates :message, presence: true
mount_uploader :image, PhotoUploader
end
