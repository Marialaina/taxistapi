class AddDriverToDelivery < ActiveRecord::Migration[6.1]
  def change
    add_reference :deliveries, :delivery, null: false, foreign_key: true
  end
end
