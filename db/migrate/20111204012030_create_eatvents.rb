class CreateEatvents < ActiveRecord::Migration
  def change
    create_table :eatvents do |t|
      t.string :creator
      t.date :day
      t.time :hour
      t.string :people

      t.timestamps
    end
  end
end
