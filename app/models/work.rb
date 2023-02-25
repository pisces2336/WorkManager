class Work < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :client_name, presence: true
end
