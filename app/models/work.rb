class Work < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :tasks

  validates :client_name, presence: true
end
