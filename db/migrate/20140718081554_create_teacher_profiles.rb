class CreateTeacherProfiles < ActiveRecord::Migration
  def change
    create_table :teacher_profiles do |t|
      t.references :user, index: true
      t.string :name
      t.text :about
      t.string :url
      t.string :email

      t.timestamps
    end
  end
end
