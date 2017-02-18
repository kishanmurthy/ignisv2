class District < ApplicationRecord
  belongs_to :rrange
  has_many :taluk
end
