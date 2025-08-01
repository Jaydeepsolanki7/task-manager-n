class Task < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }

  scope :todo, -> { where(status: :todo) }
  scope :in_progress, -> { where(status: :in_progress) }
  scope :done, -> { where(status: :done) }

  enum :status, { todo: 0, in_progress: 1, done: 2 }
end
