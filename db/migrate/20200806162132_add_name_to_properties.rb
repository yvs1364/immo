# frozen_string_literal: true

class AddNameToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :name, :string
  end
end
