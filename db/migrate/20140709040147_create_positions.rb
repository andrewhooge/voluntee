class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :position
      t.boolean :status
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
