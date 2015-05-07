class AddImageToAppliance < ActiveRecord::Migration
  def change
    add_column :appliances, :image, :string
  end
end
