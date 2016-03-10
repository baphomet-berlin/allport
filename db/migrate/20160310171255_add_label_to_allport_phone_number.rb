class AddLabelToAllportPhoneNumber < ActiveRecord::Migration
  def change
    add_column :allport_phone_numbers, :label, :integer
  end
end
