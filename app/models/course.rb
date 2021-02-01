class Course < ApplicationRecord
  has_many :bookings
  # dependent: :destroy add later
  has_one_attached :photo
  has_many_attached :files
  has_rich_text :description

  COURSE_TYPE = ['Online Test', 'Interview', 'Other']
  validates :name, :course_type, :paid_material, :description, :example_question, presence: true
  validates :course_type, inclusion: { in: COURSE_TYPE }
end
