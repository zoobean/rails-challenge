class Book < ApplicationRecord
  validates_uniqueness_of :title
  validates_presence_of :title, :author_name, :genre
  validates :isbn_13, presence: true, length:  { is: 13 }
end
