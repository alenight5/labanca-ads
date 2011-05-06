class AddUserToAdvertisements < ActiveRecord::Migration
  def self.up
	add_column :advertisements, :user_id, :integer
  end

  def self.down
	remove_column :advertisements, :user_id 
  end
end
