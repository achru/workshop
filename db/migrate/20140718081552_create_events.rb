class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.text :description
      t.string :title
      t.references :user, index: true
      t.string :url
      t.string :email
      t.string :address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
