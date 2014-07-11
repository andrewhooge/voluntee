class AddAdminUserRefToPositions < ActiveRecord::Migration
  def change
    add_reference :positions, :admin_user, index: true
  end
end
