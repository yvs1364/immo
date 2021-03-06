# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :room
      t.integer :metre
      t.string :city
      t.integer :price
      t.integer :ref

      t.timestamps
    end
  end
end
