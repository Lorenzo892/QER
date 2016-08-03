class Player < ApplicationRecord
  has_and_belongs_to_many :player_lists
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
end
