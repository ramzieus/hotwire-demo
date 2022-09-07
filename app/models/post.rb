class Post < ApplicationRecord
  validates :title, presence: true
  broadcasts_to ->(post) { "posts" }, inserts_by: :prepend
  has_rich_text :content
end
