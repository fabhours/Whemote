class AddNameToAppliance < ActiveRecord::Migration
  def change
    add_column :appliances, :name, :string
  end
end
