class RenameTypeToCoursetype < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :type, :course_type
  end
end
