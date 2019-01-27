class Attendance < ApplicationRecord
  store_accessor :exercises
  
  belongs_to :course
  belongs_to :account
end
