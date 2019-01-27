class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :attendances
  has_many :accounts, through: :attendances
end
