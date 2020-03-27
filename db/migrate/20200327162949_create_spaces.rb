class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :address
      t.string :city
      t.string :postcode
      t.integer :number_of_people
      t.integer :daily_price
      t.text :description

      t.timestamps
    end
  end
end
