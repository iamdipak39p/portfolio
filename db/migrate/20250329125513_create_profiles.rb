class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :title
      t.string :cv_path

      t.timestamps
    end
  end
end
