class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :total
      t.string :status
      t.string :token
      t.references :payment_method, foreign_key: true

      t.timestamps
    end
  end
end
