# frozen_string_literal: true

class CreateLots < ActiveRecord::Migration[6.0]
  def change
    create_table :lots do |t|
      t.string :name
      t.string :city
      t.integer :metre
      t.integer :price
      t.integer :ref

      t.timestamps
    end
  end
end
