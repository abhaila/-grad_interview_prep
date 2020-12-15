class AddCourseReferencesToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :course_types, index: true
  end
end
