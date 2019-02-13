class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.string :title, null: true, limit: 500
    	t.text :url, null: true
    	t.string :content, null: true, limit: 500
    	t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
