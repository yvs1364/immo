class AddDateToActuality < ActiveRecord::Migration[6.0]
  def change
    add_column :actualities, :date, :string
  end
end
