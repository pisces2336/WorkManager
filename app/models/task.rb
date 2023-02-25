class Task < ApplicationRecord
  belongs_to :work, dependent: :destroy

  validates :title, presence: true
  validates :scheduled_date, presence: true
  validates :due_date, presence: true
end
