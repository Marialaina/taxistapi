class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :phonenum
      t.string :address
      t.string :cart
      t.string :message
      t.string :name2
      t.string :phonenum2
      t.boolean :delivered

      t.timestamps
    end
  end
end
