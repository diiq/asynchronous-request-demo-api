class TestScore < ApplicationRecord
  validates :student_id, uniqueness: true

  belongs_to :student
end
