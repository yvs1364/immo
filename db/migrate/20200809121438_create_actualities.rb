class CreateActualities < ActiveRecord::Migration[6.0]
  def change
    create_table :actualities do |t|
      t.string :name
      t.text :texte

      t.timestamps
    end
  end
end
