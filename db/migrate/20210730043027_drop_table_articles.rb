class DropTableArticles < ActiveRecord::Migration[5.2]
  def change
    drop_table :add_user_id_to_books
  end
end
