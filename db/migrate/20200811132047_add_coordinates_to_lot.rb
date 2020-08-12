# frozen_string_literal: true

class AddCoordinatesToLot < ActiveRecord::Migration[6.0]
  def change
    add_column :lots, :latitude, :float
    add_column :lots, :longitude, :float
  end
end
