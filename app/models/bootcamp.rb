class Bootcamp < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  #Validation when creating
  validates :name, presence: true,
            length: { maximum: 255 },
            allow_nil: false, on: :create
  validates :overall_score, presence: true,
            length: { maximum: 1 },
            allow_nil: false, on: :create
  validates :curriculum_score, presence: true,
            length: { maximum: 1 },
            allow_nil: false, on: :create
  validates :job_support_score, presence: true,
            length: { maximum: 1 },
            allow_nil: false, on: :create
  validates :description, presence: true,
            length: { maximum: 1024 },
            allow_nil: false, on: :create
  #validation when updating
  validates :name, presence: true,
            length: { maximum: 255 },
            allow_nil: true, on: :update
  validates :overall_score, presence: true,
            length: { maximum: 1 },
            allow_nil: true, on: :update
  validates :curriculum_score, presence: true,
            length: { maximum: 1 },
            allow_nil: true, on: :update
  validates :job_support_score, presence: true,
            length: { maximum: 1 },
            allow_nil: true, on: :update
  validates :description, presence: true,
            length: { maximum: 1024 },
            allow_nil: true, on: :update
end
