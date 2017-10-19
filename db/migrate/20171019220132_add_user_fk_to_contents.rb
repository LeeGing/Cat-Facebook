class AddUserFkToContents < ActiveRecord::Migration[5.1]
  def change
  	add_reference(:contents, :user)
  end
end
