class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.datetime :created_at 
      t.belongs_to :secret, index:true
      t.timestamps null: false
    end
  end
end
