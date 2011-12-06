class AddWebsiteAndMenuToPlaces < ActiveRecord::Migration
  def self.up
    add_column :places, :website, :string
    add_column :places, :menu, :string  
  end
  
  def self.down
    remove_column :places, :website
    remove_column :places, :menu
  end
  
end
