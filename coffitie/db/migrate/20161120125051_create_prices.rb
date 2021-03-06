class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.string :cost
      t.string :description
      t.references :drink, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
