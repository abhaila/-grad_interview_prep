class AddSummaryToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :summary, :text
  end
end
