class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :short
      t.text :post

      t.timestamps
    end
  end
end
