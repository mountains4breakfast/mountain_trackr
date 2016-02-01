class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :bio
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
