class CreateFrameworks < ActiveRecord::Migration[7.0]
  def change
    create_table :frameworks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
