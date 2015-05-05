class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.integer :color

      t.timestamps
    end
  end
end
