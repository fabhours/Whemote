class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.boolean :state

      t.timestamps
    end
  end
end
