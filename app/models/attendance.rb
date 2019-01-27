class Attendance < ApplicationRecord
  belongs_to :course
  belongs_to :account
end
