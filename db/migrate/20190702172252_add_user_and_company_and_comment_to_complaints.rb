class AddUserAndCompanyAndCommentToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_reference :complaints, :user, foreign_key: true
    add_reference :complaints, :company, foreign_key: true
    add_column :complaints, :comment, :string
  end
end
