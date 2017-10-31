class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
    	t.integer :sender_id
    	t.string :sender_name
    	t.integer :receiver_id
    	t.string :receiver_name
      t.timestamps
    end
  end
end
