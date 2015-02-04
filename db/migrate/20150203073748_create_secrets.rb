class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :title
      t.text :description
      t.datetime :created_at
      t.boolean :approved
      t.timestamps null: false
    end
  end
end
