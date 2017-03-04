class District < ApplicationRecord
  belongs_to :rrange
  has_many :taluks
end
