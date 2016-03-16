class AddAllportContactToUsers < ActiveRecord::Migration
  def self.change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
    end
  end
end