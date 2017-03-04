class Rrange < ApplicationRecord
  belongs_to :zone
  has_many :districts
end
