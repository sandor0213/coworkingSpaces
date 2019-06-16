class Comment < ApplicationRecord
belongs_to :user
belongs_to :coworkingspace
mount_uploader :image, PhotoUploader
validates :message, presence: true
end
