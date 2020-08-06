# frozen_string_literal: true

class AddPriceToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :price, :integer
  end
end
