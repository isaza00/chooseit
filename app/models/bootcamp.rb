class Bootcamp < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_and_belongs_to_many :reviews, dependent: :destroy


end
