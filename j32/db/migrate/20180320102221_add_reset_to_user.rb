class AddResetToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :reset, :boolean, default: true
  end
end
