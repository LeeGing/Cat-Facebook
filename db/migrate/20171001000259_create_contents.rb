class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
    	t.integer :user_id
    	t.string :user_name
    	t.string :user_image
    	t.string :content
      t.timestamps
    end
  end
end
