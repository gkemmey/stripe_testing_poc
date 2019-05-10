class InitialDatabase < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email,                     null: false
      t.string :name
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
