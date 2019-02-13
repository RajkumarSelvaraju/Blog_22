class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.references :user, foreign_key: true, index: true
    	t.references :post, foreign_key: true, index: true
    	t.references :comment, foreign_key: true, index: true
    	t.text :comment_text, null: true
      t.timestamps
    end
  end
end
