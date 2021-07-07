class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers_deliveries do |t|
      t.references :delivery, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
