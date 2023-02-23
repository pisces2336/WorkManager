class Work < ApplicationRecord
  belongs_to :user
  has_many :tasks

  validates :client_name, presence: true
end
