class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :telephone, null: false
      t.string :health_care_number, null: false
      t.integer :age, null: false
      t.string :cpf, null: false
      t.timestamps
    end
  end
end
