class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :telephone

      t.timestamps
    end
  end
end
