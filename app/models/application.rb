class Application < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :plz, presence: true
  validates :email, presence: true
  validates :telefon, presence: true
  validates :payment, presence: true
  validates :motivation, presence: true
  validates :expectation, presence: true
  validates :education, presence: true
end
