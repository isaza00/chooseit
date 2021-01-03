class Review < ApplicationRecord
  belongs_to :course
  belongs_to :bootcamp

  validates :course_id, presence: true
  validates :bootcamp_id, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  #Validation when creating
  validates :name, presence: true,
            length: { minimum: 3, maximum: 255 },
            allow_nil: true, on: :update
  validates :email, presence: true,
            length: { maximum: 255 },
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false },
            allow_nil: false, on: :create  
  validates :job_title, presence: true,
            length: { maximum: 255 },
            allow_nil: false, on: :create
  validates :anonymity, presence: true,
            allow_nil: false, on: :create
  validates :title, presence: true,
            length: { minimum: 3, maximum: 1024 },
            allow_nil: false, on: :create
  validates :comment, presence: true,
            length: { minimum: 3, maximum: 1024 },
            allow_nil: false, on: :create
  validates :alum, presence: true,
            allow_nil: false, on: :create
  validates :end_year, presence: true,
            length: { minimun: 4, maximum: 4 },
            allow_nil: false, on: :create

  #Validation when updating
  validates :name, presence: true,
            length: { minimum: 3, maximum: 255 },
            allow_nil: true, on: :update
  validates :email, presence: true,
            length: { maximum: 255 },
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false },
            allow_nil: true, on: :create  
  validates :job_title, presence: true,
            length: { maximum: 255 },
            allow_nil: true, on: :create
  validates :anonymity, presence: true,
            allow_nil: true, on: :create
  validates :title, presence: true,
            length: { minimum: 3, maximum: 1024 },
            allow_nil: true, on: :create
  validates :comment, presence: true,
            length: { minimum: 3, maximum: 1024 },
            allow_nil: true, on: :create
  validates :alum, presence: true,
            allow_nil: true, on: :create
  validates :end_year, presence: true,
            length: { minimun: 4, maximum: 4 },
            allow_nil: true, on: :create
end
