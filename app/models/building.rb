class Building < ApplicationRecord
  belongs_to :firestation
  has_many :house
end
