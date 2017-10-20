class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.integer :content_id
    	t.integer :user_id
    	t.string :user_name
    	t.string :user_image
    	t.string :comment
    	t.string :content
      t.timestamps
    end
  end
end
