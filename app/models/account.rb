class Account < ApplicationRecord
  has_many :attendances
  has_many :courses, through: :attendances
end
