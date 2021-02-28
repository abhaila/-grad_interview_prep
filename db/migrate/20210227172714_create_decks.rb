class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :title
      t.string :category
      t.integer :number_of_cards
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
