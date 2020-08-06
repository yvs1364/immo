class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :city
      t.integer :metre
      t.integer :ref
      t.integer :room

      t.timestamps
    end
  end
end
