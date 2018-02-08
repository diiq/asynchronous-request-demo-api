class Student < ApplicationRecord
  validates :email, uniqueness: true

  has_many :test_scores, dependent: :destroy
end
