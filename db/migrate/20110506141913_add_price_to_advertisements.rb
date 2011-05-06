class AddPriceToAdvertisements < ActiveRecord::Migration
  def self.up
    add_column :advertisements, :price, :decimal, :precision => 8, :scale => 2
  end

  def self.down
    remove_column :advertisements, :price
  end
end
