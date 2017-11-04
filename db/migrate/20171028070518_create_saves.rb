class CreateSaves < ActiveRecord::Migration[5.1]
  def change
    create_table :saves do |t|
    	t.integer :user_id
    	t.integer :content_id
    	t.timestamps
    end
  end
end
