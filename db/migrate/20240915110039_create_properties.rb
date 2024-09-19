class CreateProperties < ActiveRecord::Migration[7.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :headline
      t.string :description
      t.string :city
      t.string :state
      t.string :country
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet
      t.integer :price_cents
      t.string :price_currency

      t.timestamps
    end
  end
end
