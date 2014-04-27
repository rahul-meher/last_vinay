class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :material
      t.string :packagingmethod
      t.string :city
      t.integer :postalcode
      t.string :email

      t.timestamps
    end
  end
end
