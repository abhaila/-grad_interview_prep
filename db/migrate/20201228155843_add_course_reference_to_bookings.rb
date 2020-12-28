class AddCourseReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :courses, index: true
  end
end
