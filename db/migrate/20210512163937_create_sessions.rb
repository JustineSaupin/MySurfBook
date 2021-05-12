class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.date :date
      t.string :spot
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
