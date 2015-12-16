class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.text :style

      t.timestamps null: false
    end
  end
end
