class Attendance < ApplicationRecord
  store_accessor :exercises

  belongs_to :course
  belongs_to :account

  def points
    sum = 0

    self.exercises.each do |key, value|
      sum = sum + value.to_i
    end

    sum
  end
  def self.statuses
    ['STARTED', 'MIDDLE', 'ALMOST COMPLETED', 'COMPLETED']
  end
end
