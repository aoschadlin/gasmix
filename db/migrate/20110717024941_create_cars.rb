class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string :name
      t.float :tank_size
      t.integer :user_id

      t.timestamps
    end
    
    add_index :cars, :user_id
  end

  def self.down
    drop_table :cars
  end
end
