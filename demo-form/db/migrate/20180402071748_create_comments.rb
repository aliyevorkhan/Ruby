class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :demosite_id
      t.string :name
      t.string :surname
      t.integer :age
      t.text :school
      t.text :adress

      t.timestamps
    end
  end
end
