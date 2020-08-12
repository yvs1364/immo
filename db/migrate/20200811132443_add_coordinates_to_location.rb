# frozen_string_literal: true

class AddCoordinatesToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :float
  end
end
