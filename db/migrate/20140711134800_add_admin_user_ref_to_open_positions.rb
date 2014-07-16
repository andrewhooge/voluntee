class AddAdminUserRefToOpenPositions < ActiveRecord::Migration
  def change
    add_reference :open_positions, :position, index: true
  end
end
