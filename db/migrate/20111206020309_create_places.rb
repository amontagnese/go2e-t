class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.decimal :price
      t.string :days
      t.string :hours

      t.timestamps
    end
  end
end
