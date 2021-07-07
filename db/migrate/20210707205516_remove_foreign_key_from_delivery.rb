class RemoveForeignKeyFromDelivery < ActiveRecord::Migration[6.1]
  def change
    remove_column :deliveries, :delivery_id, :bigint
  end
end
