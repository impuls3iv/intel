class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.string :twitter
      t.string :linkedin
      t.string :facebook

      t.timestamps null: false
    end
  end
end
