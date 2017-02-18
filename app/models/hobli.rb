class Hobli < ApplicationRecord
  belongs_to :taluk
  has_many :firestation
end
