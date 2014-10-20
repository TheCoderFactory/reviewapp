class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.references :user, index: true

      t.timestamps
    end
  end
end
