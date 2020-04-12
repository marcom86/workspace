class AddPriceToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_monetize :spaces, :price, currency: { present: false }
  end
end
