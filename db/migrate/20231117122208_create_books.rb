class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.string :isbn_13
      t.string :genre
      t.string :publisher
      t.text :description
      t.timestamps
    end
  end
end
