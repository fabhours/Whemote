class CreateLeds < ActiveRecord::Migration
  def change
    create_table :leds do |t|

      t.timestamps
    end
  end
end
