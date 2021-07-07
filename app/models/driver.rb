class Driver < ApplicationRecord
  has many :drivers, through :deliveries
end
