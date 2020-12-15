class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :type
      t.boolean :paid_material
      t.text :description
      t.text :example_question

      t.timestamps
    end
  end
end
