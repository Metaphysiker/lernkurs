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

  def self.with_points
    array_with_ids = []
    Account.all.each do |account|
      if account.total_score > 0
        array_with_ids << account.id
      end
    end
    Account.where(id: array_with_ids)
  end


end
