class CreateNouvelles < ActiveRecord::Migration[6.0]
  def change
    create_table :nouvelles do |t|
      t.string :name
      t.text :texte

      t.timestamps
    end
  end
end
