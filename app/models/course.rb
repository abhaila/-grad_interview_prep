class Course < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  COURSE_TYPE = ['Online Test', 'Interview', 'Other']
  validates :name, :type, :paid, :description, :example, presence: true
  validates :category, inclusion: { in: COURSE_TYPE }
end
