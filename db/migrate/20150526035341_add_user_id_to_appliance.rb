class AddUserIdToAppliance < ActiveRecord::Migration
  def change
    add_column :appliances, :user_id, :integer
  end
end
