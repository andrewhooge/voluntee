class CreateOpenPositions < ActiveRecord::Migration
  def change
    create_table :open_positions do |t|
      t.string :open_position
      t.string :details
      t.boolean :interest

      t.timestamps
    end
  end
end
