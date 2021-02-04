class Post < ApplicationRecord
  has_rich_text :rich_content
  has_one_attached :photo
end
