class RemoveDailyPriceFromSpaces < ActiveRecord::Migration[6.0]
  def change

    remove_column :spaces, :daily_price, :integer
  end
end
