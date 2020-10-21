class Review < ApplicationRecord
  belongs_to :course
  belongs_to :bootcamp

  validates :course_id, presence: true
  validates :bootcamp_id, presence: true
end
