class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :header
      t.string :location
      t.string :website
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
