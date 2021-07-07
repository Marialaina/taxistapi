class Drivers_Deliveries < ApplicationRecord
  self.table_name="drivers_deliveries"
  belongs_to :delivery
  belongs_to :driver
end
