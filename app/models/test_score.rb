class TestScore < ApplicationRecord
  validates :student_id, presence: true
  validates :score, presence: true
  validates :max_score, presence: true

  belongs_to :student
end
