class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :lga

      t.timestamps
    end
  end
end
