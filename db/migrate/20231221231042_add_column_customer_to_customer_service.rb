class AddColumnCustomerToCustomerService < ActiveRecord::Migration[7.0]
  def change
    add_reference :customer_services, :customer, null: true, foreign_key: true
  end
end
