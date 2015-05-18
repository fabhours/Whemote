class AddPortToAppliance < ActiveRecord::Migration
  def change
    add_column :appliances, :port, :integer
  end
end
