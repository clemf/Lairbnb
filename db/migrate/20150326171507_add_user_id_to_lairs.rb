class AddUserIdToLairs < ActiveRecord::Migration
  def change
    add_column :lairs, :user_id, :integer
    
  end
end
