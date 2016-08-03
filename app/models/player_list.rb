class PlayerList < ApplicationRecord
  has_and_belongs_to_many :players
  belongs_to :partido
end
