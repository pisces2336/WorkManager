class Task < ApplicationRecord
  belongs_to :work

  validates :title, presence: true
  validates :scheduled_date, presence: true
  validates :due_date, presence: true
end
