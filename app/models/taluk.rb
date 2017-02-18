class Taluk < ApplicationRecord
  belongs_to :district
  has_many :hobli
end
