class Firestation < ApplicationRecord
  belongs_to :hobli
  has_one :building
end
