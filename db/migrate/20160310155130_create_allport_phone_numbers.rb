class CreateAllportPhoneNumbers < ActiveRecord::Migration
  def change
    create_table :allport_phone_numbers do |t|
      t.string :prefix
      t.string :number
      t.references :country, index: true, foreign_key: true
      t.references :allport_contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
