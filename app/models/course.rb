class Course < ApplicationRecord
  has_and_belongs_to_many :reviews

  validates :bootcamp_id, presence: true
end
