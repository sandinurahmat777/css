class CreateStadiums < ActiveRecord::Migration
  def change
    create_table :stadiums do |t|
    	t.string :name
      t.integer :capacity
      t.string :city
      t.timestamps
    end
  end
end
