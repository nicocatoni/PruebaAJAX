class AddUsernameAndComplaintToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_reference :users, :complaint, foreign_key: true
  end
end
