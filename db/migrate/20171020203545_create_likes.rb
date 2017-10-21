class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
    	t.integer :content_id
    	t.integer :user_id
    	t.string :user_name
    end
  end
end
