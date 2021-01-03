class Course < ApplicationRecord
  has_many :reviews

  validates :bootcamp_id, presence: true

  #Validation when creating
  validates :name, presence: true,
            length: { maximum: 255 },
            allow_nil: false, on: :create
  validates :cost, presence: true,
            length: { maximum: 6 },
            allow_nil: false, on: :create
  validates :duration, presence: true,
            length: { maximum: 255 },
            allow_nil: false, on: :create
  validates :locations, presence: true,
            length: { maximum: 1024 },
            allow_nil: false, on: :create
  validates :description, presence: true,
            length: { maximum: 1024 },
            allow_nil: false, on: :create
  validates :subjects, presence: true,
            length: { maximum: 1024 },
            allow_nil: false, on: :create
  validates :pay_after_grad, presence: true,
            allow_nil: false, on: :create
  validates :percent, presence: true,
            length: { maximum: 3 },
            allow_nil: false, on: :create
  validates :payments, presence: true,
            length: { maximum: 3 },
            allow_nil: false, on: :create

  #Validation when updating
  validates :name, presence: true,
            length: { maximum: 255 },
            allow_nil: true, on: :create
  validates :cost, presence: true,
            length: { maximum: 6 },
            allow_nil: true, on: :create
  validates :duration, presence: true,
            length: { maximum: 255 },
            allow_nil: true, on: :create
  validates :locations, presence: true,
            length: { maximum: 1024 },
            allow_nil: true, on: :create
  validates :description, presence: true,
            length: { maximum: 1024 },
            allow_nil: true, on: :create
  validates :subjects, presence: true,
            length: { maximum: 1024 },
            allow_nil: true, on: :create
  validates :pay_after_grad, presence: true,
            allow_nil: true, on: :create
  validates :percent, presence: true,
            length: { maximum: 3 },
            allow_nil: true, on: :create
  validates :payments, presence: true,
            length: { maximum: 3 },
            allow_nil: true, on: :create

end
