class CreateMotives < ActiveRecord::Migration
  def change
    create_table :motives do |t|

      t.timestamps
      t.string :point
    end
  end
end
