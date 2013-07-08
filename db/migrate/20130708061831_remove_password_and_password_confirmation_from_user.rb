class RemovePasswordAndPasswordConfirmationFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :password
    remove_column :users, :password_confirmation
  end

  def down
    add_column :users, :password_confirmation, :string
    add_column :users, :password, :string
  end
end
