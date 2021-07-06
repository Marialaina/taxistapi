class RemoveDeliveryIdFromDriver < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :delivery_id, :string
  end
end
