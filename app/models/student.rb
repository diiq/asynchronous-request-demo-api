class Student < ApplicationRecord
  validates :email, uniqueness: true
  validates :name, presence: true

  has_many :test_scores, dependent: :destroy
end
