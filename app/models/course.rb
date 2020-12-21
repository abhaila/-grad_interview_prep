class Course < ApplicationRecord
  has_many :bookings, dependent: :destroy

  COURSE_TYPE = ['Online Test', 'Interview', 'Other']
  validates :name, :type, :paid, :description, :example, presence: true
  validates :category, inclusion: { in: COURSE_TYPE }
end
