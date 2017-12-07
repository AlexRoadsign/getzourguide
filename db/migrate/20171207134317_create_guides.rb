class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :specialty
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
