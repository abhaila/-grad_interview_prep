class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :author
      t.date :posted_date
      t.string :read_time
      t.string :post_views
      t.string :post_comments

      t.timestamps
    end
  end
end
