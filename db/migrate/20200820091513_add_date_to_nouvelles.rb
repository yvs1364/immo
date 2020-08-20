class AddDateToNouvelles < ActiveRecord::Migration[6.0]
  def change
    add_column :nouvelles, :date, :string
  end
end
