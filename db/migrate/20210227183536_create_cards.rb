class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :front_side
      t.string :back_side
      t.references :deck, null: false, foreign_key: true
      t.string :learnt
      t.boolean :flip

      t.timestamps
    end
  end
end
