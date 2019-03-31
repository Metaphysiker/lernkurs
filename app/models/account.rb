class Account < ApplicationRecord
  has_many :attendances
  has_many :courses, through: :attendances

  def total_score
    score = 0
    self.attendances.each do |attendance|
      score = score + attendance.points
    end
    score
  end

  def max_total_score
    score = 0
    self.courses.each do |course|
      score = score + course.max_points
    end
    score
  end
end
