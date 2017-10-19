class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
    	t.references :user, index: true, foreign_key: true
    	t.string :title
    	t.string :content
      t.timestamps
    end
  end
end
