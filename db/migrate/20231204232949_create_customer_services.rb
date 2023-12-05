class CreateCustomerServices < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_services do |t|
      t.string :code, null: false
      t.integer :service_type, null: false
      t.integer :medical_service_type, null: false
      t.timestamps
    end
  end
end
