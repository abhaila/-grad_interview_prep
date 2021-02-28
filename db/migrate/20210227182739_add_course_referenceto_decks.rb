class AddCourseReferencetoDecks < ActiveRecord::Migration[6.0]
  def change
    add_reference :decks, :courses, index: true
  end
end
