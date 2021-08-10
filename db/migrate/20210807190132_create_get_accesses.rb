class CreateGetAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :get_accesses do |t|
      t.string :full_name
      t.string :email
      t.integer :phne
      t.string :work_place
      t.string :website
      t.string :work_vertical
      t.string :use_case
      t.string :use_region
      t.integer :monthly
      t.boolean :approval
      t.boolean :early_access

      t.timestamps
    end
  end
end
