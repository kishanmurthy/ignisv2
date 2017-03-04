class Hobli < ApplicationRecord
  belongs_to :taluk
  has_many :firestations
end
