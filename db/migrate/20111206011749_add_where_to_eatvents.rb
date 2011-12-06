class AddWhereToEatvents < ActiveRecord::Migration
  def self.up
    add_column :eatvents, :where, :string
  end
  
  def self.down
    remove_column :eatvents, :where
  end
  
end
